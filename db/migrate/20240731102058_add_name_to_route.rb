class AddNameToRoute < ActiveRecord::Migration[7.1]
  def change
    add_column :routes, :name, :string
  end
end
