class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.timestamps
    end
    add_column :comments, :rating, :integer
    add_column :comments, :comment, :text
  end
end
