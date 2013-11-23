class CreateGirls < ActiveRecord::Migration
  def change
    create_table :girls do |t|
      t.string :name
      t.string :description
      t.string :product_code
      t.timestamps
    end
  end
end
