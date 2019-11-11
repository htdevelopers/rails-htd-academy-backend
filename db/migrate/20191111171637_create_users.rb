class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age, null: false, default: 1
      t.string :email, null: false, unique: true
      t.timestamps
    end
  end
end
