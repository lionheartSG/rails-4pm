class CreateSummaries < ActiveRecord::Migration[7.0]
  def change
    create_table :summaries do |t|
      t.string :user
      t.text :address
      t.integer :handphone
      t.string :email_address
      t.string :product
      t.integer :quantity

      t.timestamps
    end
  end
end
