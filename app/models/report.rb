class Report < ActiveRecord::Base
  attr_accessible :active, :description, :name, :created_at
  belongs_to :user
  validates :name, presence: true
  paginates_per 5

  class << self
    def sort_by(column, direction)
      order_column = Report.column_names.include?(column) ? column : 'created_at'
      direction = %w(asc desc).include?(direction) ? direction : 'desc'
      order(order_column + ' ' + direction)
    end
  end
end
