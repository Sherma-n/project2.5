class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|

      t.string :title
      t.string :location
      t.integer :days
      t.string :pictureUrl
      t.string :user_id
      t.boolean :public

      validates :title, :days, presence: true

      t.timestamps null: false
    end
  end
end
