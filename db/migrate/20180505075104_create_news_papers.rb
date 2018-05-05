class CreateNewsPapers < ActiveRecord::Migration[5.1]
  def change
    create_table :news_papers do |t|

      t.text :title
      t.references :user
      t.references :m_paper_type
      t.text :content
      t.integer :sort
      t.timestamps
    end
  end
end
