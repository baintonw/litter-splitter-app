class CreateClaims < ActiveRecord::Migration[5.2]
  def change
    create_table :claims do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :cat, foreign_key: true

      t.timestamps
    end
  end
end
