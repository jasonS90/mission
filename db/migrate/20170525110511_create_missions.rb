class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
      t.string :title
      t.integer :category
      t.integer :payment
      t.integer :address
      t.string :file
      t.text :description
      t.references :user, foreign_key: true
      t.integer :select

      t.timestamps
    end
  end
end
