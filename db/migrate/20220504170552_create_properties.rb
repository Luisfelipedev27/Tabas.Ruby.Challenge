class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps
    end
  end
end
