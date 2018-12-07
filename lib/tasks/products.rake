require 'csv'


namespace :products do
  desc "TODO"
  task populate: :environment do
    puts 'Creating products...'
    csv_text = File.read("catalog_product.csv")
    csv = CSV.parse(csv_text, {:col_sep => "|"})
    csv.each_with_index do |row, index|
      next if index == 0
        product = Product.create(sku: row[0], name: row[1], description: row[2], price: row[3].to_i, skin_type: row[4], body_zone: row[5], fullness: row[6], sexe: row[7], ethnicity: row[8] )
    end
    puts 'Finished!'

  end

end
