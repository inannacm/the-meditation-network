class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :city
      t.string :style
      t.string :address
      t.string :link
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
