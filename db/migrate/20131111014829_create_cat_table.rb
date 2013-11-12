class CreateCatTable < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.string :img_height
      t.string :img_width

      t.timestamps
    end
  end
end
