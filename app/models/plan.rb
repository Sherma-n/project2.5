class Plan < ActiveRecord::Base
  belongs_to :user
  has_many :itineraries

  validates :title, presence: true
end
