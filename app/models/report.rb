class Report < ActiveRecord::Base
  attr_accessible :active, :description, :name, :created_at
  belongs_to :user
  validates :name, presence: true
  paginates_per 5
end
