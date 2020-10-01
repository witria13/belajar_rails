class CreateBooks < ActiveRecord::Migration[6.0]
  def up
    create_table :books do |t|
      t.string :title , default: 'belum ada judul', limit: 100
      t.text :about

      t.timestamps
    end
  end

  def down
  	drop_table :books
  end
end
