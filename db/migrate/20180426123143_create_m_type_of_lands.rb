class CreateMTypeOfLands < ActiveRecord::Migration[5.1]
  def change
    create_table :m_type_of_lands do |t|

      t.string :name
      t.string :key_name
      t.integer :sort
      t.timestamps
    end
  end
end
