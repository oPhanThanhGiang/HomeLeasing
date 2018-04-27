class AddUserIntoTableNews < ActiveRecord::Migration[5.1]
  def change
    add_reference :news, :user, index: true
  end
end
