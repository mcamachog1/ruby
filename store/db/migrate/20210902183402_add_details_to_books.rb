class AddDetailsToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :author, :string
    add_column :books, :editor, :string
    add_column :books, :description, :string
  end
end
