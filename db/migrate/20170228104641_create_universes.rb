class CreateUniverses < ActiveRecord::Migration[5.0]
  def change
    create_table :universes do |t|
      t.string :name
      t.string :picture
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
