class AddUniquecodeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :uniquecode, :string
  end
end
