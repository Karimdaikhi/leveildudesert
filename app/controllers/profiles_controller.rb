class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :profile_photo, :call_api, :diagnostic, :results]


  def profile_photo
    @profile = Profile.new(profile_params)

    if @profile.save
      call_api
      redirect_to diagnostic_path
    else
      render 'products/index'
    end
  end

  def call_api
    call_api = Clarifai::Rails::Detector.new(@profile.photo.metadata["secure_url"]).results

    my_results = {
      ages: [],
      sexes: [],
      ethnicities: []
    }

    result_ages = call_api.first["data"]["regions"].first["data"]["face"]["age_appearance"]["concepts"]
    3.times do |x|
      my_results[:ages] << {
        name: result_ages[x]["name"],
        value: result_ages[x]["value"]
      }
    end

    result_sexes = call_api.first["data"]["regions"].first["data"]["face"]["gender_appearance"]["concepts"]
    2.times do |x|
      my_results[:sexes] << {
        name: result_sexes[x]["name"],
        value: result_sexes[x]["value"]
      }
      end

    result_ethnicities = call_api.first["data"]["regions"].first["data"]["face"]["multicultural_appearance"]["concepts"]
    3.times do |x|
      my_results[:ethnicities] << {
        name: result_ethnicities[x]["name"],
        value: result_ethnicities[x]["value"]
      }
      end

    @profile.age = my_results[:ages][0][:name]
    @profile.sexe = my_results[:sexes][0][:name]
    @profile.ethnicity = my_results[:ethnicities][0][:name]
    @profile.save

    session[:ages] = my_results[:ages]
    session[:sexes] = my_results[:sexes]
    session[:ethnicities] = my_results[:ethnicities]
  end

  def diagnostic
    @profile = Profile.last

    @h = {
      'black or african american'.to_sym => 'Noir ou Afro-américain',
      'middle eastern or north african'.to_sym =>'Moyen orient ou Afrique du nord',
      'white'.to_sym =>'Blanc',
      'asian'.to_sym =>'Asiatique',
      'hispanic, latino, or spanish origin'.to_sym =>'Hispanique, latino ou espagnole',
      'native hawaiian or pacific islander'.to_sym =>"Natif d'Hawaï ou d'autres îles du Pacifique",
      'american indian or alaska native'.to_sym =>"Amérindien ou natif de l'Alaska",
      'feminine'.to_sym =>'Femme',
      'masculine'.to_sym =>'Homme'
    }
  end

  def update
    if @profile.save
      redirect_to results_path
    else
      render 'profile/diagnostic'
    end
  end

  def results

    @profile = Profile.last

    if @profile.age < 40
      age_profile = 'Jeune'
    else
      age_profile = 'Vieux'
    end

    @products = Product.where(sexe: profile.sexe, fullness: age_profile, ethnicity: profile.ethnicity, skin_type: profile.skin_type, body_zone: profile.body_zone )

  end

  private

  def profile_params
    params.require(:profile).permit(:photo, :photo_cache, :skin_type, :body_zone)
  end
end
