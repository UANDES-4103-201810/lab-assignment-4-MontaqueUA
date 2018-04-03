class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  validate :date_cannot_be_past
  validate :date_cannot_match_event_place
  def date_cannot_be_past
    if start_date < Date.today()
      errors.add(:start_date, "Cannot start event in the past")
    end
  end
end



