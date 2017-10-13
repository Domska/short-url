class AddIndexToUrlShortUrl < ActiveRecord::Migration[5.1]
  def change
    add_index :urls, :short_url, unique: true
  end
end
