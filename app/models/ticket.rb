class Ticket < ApplicationRecord
  belongs_to :event
  has_many :user_tickets
  has_many :users, through: :user_tickets
  # validates :price, numericaly: {greater_than: 0, only_integer: true}


end
