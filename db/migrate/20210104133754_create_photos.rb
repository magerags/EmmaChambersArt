class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :collection
      t.string :description
      t.string :size
      t.string :type
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
