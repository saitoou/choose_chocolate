class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :chocolate, null: false, foreign_key: true
      t.integer :sweet
      t.integer :cacao
      t.integer :appearance
      t.integer :texture
      t.integer :melt

      t.timestamps
    end
  end
end
