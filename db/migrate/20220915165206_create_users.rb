class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :contact
      t.integer :credit, default: 150
      t.string :uniquecode

      t.timestamps
    end
  end
end
