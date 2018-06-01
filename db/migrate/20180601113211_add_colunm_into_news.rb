class AddColunmIntoNews < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :type, :integer
  end
end
