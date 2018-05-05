class CreateMPaperTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :m_paper_types do |t|
      t.string :name
      t.string :key_name
      t.integer :sort
      t.timestamps
    end
  end
end
