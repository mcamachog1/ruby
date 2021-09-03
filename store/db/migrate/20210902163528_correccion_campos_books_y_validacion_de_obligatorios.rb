class CorreccionCamposBooksYValidacionDeObligatorios < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :platform, :string
    remove_column :books, :description, :string  
    change_column_null :books, :name, false
    change_column_null :books, :price, false
  end
end
