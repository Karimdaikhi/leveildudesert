depuis uen vue jenvoie mon formulaire sur une action
je crée Profile.create
je récupère l'url p.photo.url

appelr clarifai vec l'url
parser le json

//charger une photo de l'utilisateur vers cloudinary

<%= simple_form_for(article) do |f| %>
  <!-- [...] -->
  <%= f.input :photo %>
  <%= f.input :photo_cache, as: :hidden %>
  <%= f.button :submit, class: 'btn-yours' %>
  <!-- [...] -->
<% end %>



//recupérer l'url de l'image de cloudinary

depuis l'action create   .photo.url

//utiliser l'url de l'image dans l'api clarifai-rails

 fetch(`Clarifai::Rails::Detector.new(image_url).image`)
    .then(response => response.json())
    .then((data) => {
      const results = {
        age_name: data.regions[2].face[0].concepts[0]
        age_value:
        sexe_name:
        sexe_value:
        ethnicity_name:
        ethnicty_value:
        ethnicity:
      };

//récupérer le json et traiter les données que l'on souhaite récupérer (age, sexe, ethnicité)
//attribuer l'age, le sexe et l'éthnicité correspondante au modèle profil




//afficher le profil avec les 2 ernières questions à compléter


// générer le resultat avec le produit poussé




Clarifai::Rails::Detector.new(image_url, model_code).image
=>retourne un objet json

app.models.predict("c0c0ac362b03416da06ab3fa36fb58e3", "https://samples.clarifai.com/demographics.jpg").then(
    function(response) {
      // do something with response
    },

    function(err) {
      // there was an error
    }
  );



///

const photo = document.getElementById('photo-diag')

//


element.addEventListener(submit, (event) => {
  // Do something (callback)
});


image.concepts_with_percent
