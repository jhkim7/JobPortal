class Job < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5}
  belongs_to :employer
end
