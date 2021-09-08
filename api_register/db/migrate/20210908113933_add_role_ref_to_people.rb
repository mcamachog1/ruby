class AddRoleRefToPeople < ActiveRecord::Migration[6.1]
  def change
    add_reference :people, :role, null: true, foreign_key: true
  end
end
