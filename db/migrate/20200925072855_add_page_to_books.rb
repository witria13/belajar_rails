class AddPageToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :page, :integer
  end
end
