class AddTimestampsToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :price, :integer
  end
end
