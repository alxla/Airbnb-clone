class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :thread_number
      t.string :title
      t.text :body
      t.references :request, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
