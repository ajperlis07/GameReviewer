class CreateVideoGameClassAndAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :video_games do |t|
      t.string :titles
      t.string :systems
      t.boolean :multiple_consoles
    end
  end
end
