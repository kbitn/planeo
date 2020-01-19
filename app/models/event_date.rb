class EventDate < ApplicationRecord
  belongs_to :event
  has_many :votes, dependent: :destroy

  scope :confirmed, -> { find_by(confirmed: true) }
end
