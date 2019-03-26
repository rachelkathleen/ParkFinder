class AddDescriptionToParksTable < ActiveRecord::Migration
  def change
    add_column :parks, :description, :string
  end
end
