class AddImageColumn < ActiveRecord::Migration
  def change
	add_column :babies, :image, :text
  end
end
