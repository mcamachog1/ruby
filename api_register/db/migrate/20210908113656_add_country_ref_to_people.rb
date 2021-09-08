class AddCountryRefToPeople < ActiveRecord::Migration[6.1]
  def change
    add_reference :people, :country, null: true, foreign_key: true
  end
end
