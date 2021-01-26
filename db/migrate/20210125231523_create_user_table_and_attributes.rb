class CreateUserTableAndAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :console
    end
  end
end
