class AddComedianToShows < ActiveRecord::Migration[6.1]
  def change
    add_column :shows, :comedian, :string
  end
end
