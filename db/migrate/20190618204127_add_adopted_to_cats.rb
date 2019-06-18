class AddAdoptedToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :adopted, :boolean, :default => false
  end
end
