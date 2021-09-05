class CreateChocolates < ActiveRecord::Migration[6.0]
  def change
    create_table :chocolates do |t|
      t.string :name
      t.text :detail
      t.string :image

      t.timestamps
    end
  end
end
