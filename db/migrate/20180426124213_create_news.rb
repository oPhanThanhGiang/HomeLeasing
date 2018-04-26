class CreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :news do |t|

      t.references :type_of_information
      t.references :type_of_land
      t.references :unit
      t.references :city
      t.references :district
      t.references :ward
      t.references :street
      t.references :direction_of_house
      t.references :direction_of_balcony
      t.references :interior
      t.references :type_of_new
      t.string :price
      t.string :area
      t.text :address
      t.text :title
      t.text :content_posted
      t.string :latitude
      t.string :longitude
      t.string :name_map
      t.string :front
      t.string :number_of_floors
      t.string :number_of_bedrooms
      t.string :number_of_toilets
      t.string :access_road
      t.datetime :start_day
      t.datetime :end_date
      t.string :security_code
      t.timestamps
    end
  end
end
