class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :chocolate_id
      t.integer :sweet
      t.integer :cacao
      t.integer :appearance
      t.integer :texture
      t.integer :melt

      t.timestamps
    end
  end
end
