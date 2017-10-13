class AddCounterToUrls < ActiveRecord::Migration[5.1]
  def change
    add_column :urls, :counter, :integer, default: 0
  end
end
