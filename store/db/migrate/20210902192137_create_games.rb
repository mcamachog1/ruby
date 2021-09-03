class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :name
      t.decimal :price
      t.string :plataform
      t.string :description

      t.timestamps
    end
  end
end
