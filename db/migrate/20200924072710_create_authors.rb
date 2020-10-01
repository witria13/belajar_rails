class CreateAuthors < ActiveRecord::Migration[6.0]
  def up
    create_table :authors do |t|
      t.string :name, limit: 50
      t.text :address
      t.integer :age
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def down
  	drop_table :authors
  end
end
