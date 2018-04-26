class CreateMDistricts < ActiveRecord::Migration[5.1]
  def change
    create_table :m_districts do |t|
      t.string :name
      t.string :key_name
      t.integer :sort
      t.timestamps
    end
  end
end
