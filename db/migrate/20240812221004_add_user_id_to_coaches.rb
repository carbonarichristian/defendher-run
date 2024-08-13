class AddUserIdToCoaches < ActiveRecord::Migration[7.1]
  def change
    add_reference :coaches, :user, foreign_key: true
  end
end
