class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.belongs_to :users, index: true
      t.belongs_to :plans, index: true
      t.timestamps null: false
    end
  end
end
