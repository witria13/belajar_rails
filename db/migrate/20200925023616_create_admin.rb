class CreateAdmin < ActiveRecord::Migration[6.0]
  def up
    create_table :admins do |t|
      t.string :name
      t.text :email

      t.timestamps
    end
  end

  def down
  	drop_table :admins
  end
end