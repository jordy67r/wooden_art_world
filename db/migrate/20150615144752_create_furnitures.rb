class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
