class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
