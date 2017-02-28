class AddForeignKeyToRequest < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :profile_artist_id, :integer
    add_foreign_key :requests, :profiles, column: :profile_artist_id
  end
end
