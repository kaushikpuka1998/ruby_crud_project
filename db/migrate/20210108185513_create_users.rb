class CreateUsers < ActiveRecord::Migration[6.1]
  def up
    create_table :users do |t|
      t.column "First Name",:string,:limit =>25
      t.string "Last Name",:limit => 25
      t.string "Email",:default => '',:null => false
      t.string "Password",:limit =>25

      t.timestamps
    end
  end
  def down
    drop_table :users 
  end
end
