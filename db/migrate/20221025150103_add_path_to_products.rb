class AddPathToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :path, :string
  end
end
