class AddImgToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :img_url, :string
  end
end
