class Report < ActiveRecord::Base
  attr_accessible :active, :description, :name
  belongs_to :user
end
