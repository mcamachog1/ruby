class ValidateDataTypeForFieldname < ActiveRecord::Migration[6.1]
  def change
    #Validaciones companies
    change_column_null(:companies, :name, false)

    #Validaciones games
    change_column_null(:games, :name, false)
    change_column_null(:games, :price, false)
    change_column(:games, :price, :decimal, precision: 8, scale: 2)
    change_column(:games, :description, :string, limit: 250)
    
    #Validaciones books
    change_column_null(:books, :name, false)
    change_column_null(:books, :price, false)
    change_column_null(:books, :author, false)

    change_column(:books, :price, :decimal, precision: 8, scale: 2)
    change_column(:books, :author, :string, limit: 30)
    change_column(:books, :description, :string, limit: 250)

  end
end
