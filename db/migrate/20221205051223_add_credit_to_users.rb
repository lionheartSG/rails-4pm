class AddCreditToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :credit, :string, default: 150
  end
end
