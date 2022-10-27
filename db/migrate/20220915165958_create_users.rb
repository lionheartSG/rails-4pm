class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :block
      t.string :street
      t.string :unit
      t.string :postal
      t.integer :handphone
      t.string :email_address
      t.string :uniquecode
      t.timestamps
    end
  end
end
