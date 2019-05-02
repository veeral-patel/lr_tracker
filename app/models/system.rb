class System < ApplicationRecord
  belongs_to :engagement

  enum status: { open: 1, wip: 2, done: 3, blocked: 4 }

  validates :hostname, :presence => true
  validates :status, :presence => true
end
