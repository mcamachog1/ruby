class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.string :adress
      t.string :email
      t.boolean :employee
      t.boolean :client

      t.timestamps
    end
  end
end
