class AddCoordinatesToShows < ActiveRecord::Migration[6.1]
  def change
    add_column :shows, :latitude, :float
    add_column :shows, :longitude, :float
  end
end
