class AddForeignKeysToNotesTable < ActiveRecord::Migration
  def change
    add_column :notes, :user_id, :integer
    add_column :notes, :park_id, :integer
  end
end
