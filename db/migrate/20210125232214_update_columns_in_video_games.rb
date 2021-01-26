class UpdateColumnsInVideoGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :video_games, :titles, :string
    remove_column :video_games, :systems, :string
    remove_column :video_games, :multiple_consoles, :boolean
    add_column :video_games, :title, :string
    add_column :video_games, :system, :string
    add_column :video_games, :multiple_consoles, :boolean
  end
end
