class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :datetime
      t.text :description
      t.integer :max_attend
      t.string :category, array: true, default: []
      t.integer :price_per
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
