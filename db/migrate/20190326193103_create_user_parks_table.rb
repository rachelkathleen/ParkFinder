class CreateUserParksTable < ActiveRecord::Migration
  def change
    create_table :user_parks do |t|
      t.integer :park_id
      t.integer :user_id
      t.boolean :been_to
      t.boolean :bucket_list
    end
  end
end
