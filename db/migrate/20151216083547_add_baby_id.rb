class AddBabyId < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.belongs_to :baby
    end
  end
end
