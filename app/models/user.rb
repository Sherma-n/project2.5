class User < ActiveRecord::Base
  has_many :plans
  has_many :bookmarks

  # Plan.joins(bookmarks: :user).where("bookmarks.user_id = 1")
end
