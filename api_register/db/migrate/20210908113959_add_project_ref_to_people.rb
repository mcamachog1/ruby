class AddProjectRefToPeople < ActiveRecord::Migration[6.1]
  def change
    add_reference :people, :project, null: true, foreign_key: true
  end
end
