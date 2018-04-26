class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.text :info
      t.integer :phone
      t.string  :email
      t.string :skype
      t.integer :role
      t.text :memo
      t.boolean :is_active
      t.timestamps
    end
  end
end
