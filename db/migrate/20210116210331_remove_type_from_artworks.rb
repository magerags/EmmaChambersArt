class RemoveTypeFromArtworks < ActiveRecord::Migration[6.1]
  def change
    remove_column :artworks, :type, :string
    add_column :artworks, :medium, :string
  end
end
