class CreateParksTable < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :park_name
      t.string :headline
      t.string :state
      t.string :website
      t.string :image
    end    
  end
end
