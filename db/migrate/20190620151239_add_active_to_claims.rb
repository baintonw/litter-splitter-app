class AddActiveToClaims < ActiveRecord::Migration[5.2]
  def change
    add_column :claims, :active, :boolean, :default => false
  end
end
