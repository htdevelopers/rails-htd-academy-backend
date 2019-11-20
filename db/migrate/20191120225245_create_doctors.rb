class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.timestamp :practicing_from, null: false
      t.integer :qualification_number, null: false, uniqe: true
      t.integer :employment, null: false, default: 0
      t.timestamps
    end
  end
end
