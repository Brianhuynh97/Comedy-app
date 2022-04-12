class CreateShows < ActiveRecord::Migration[6.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :location
      t.datetime :datetime
      t.integer :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
