class CreateInquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :inquiries do |t|
      t.string :email
      t.integer :title, default: 0, null: false
      t.text :message

      t.timestamps
    end
  end
end
