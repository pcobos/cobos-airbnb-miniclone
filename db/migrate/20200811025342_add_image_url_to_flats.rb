class AddImageUrlToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :image_url, :string
  end
end
