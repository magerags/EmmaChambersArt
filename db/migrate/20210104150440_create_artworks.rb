class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :description
      t.string :type
      t.string :size
      t.boolean :featured
      t.references :collection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
