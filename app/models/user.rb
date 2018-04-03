class User < ApplicationRecord
	validates :email, format: {with: /\A([\w+\-]\.?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i }
	validates :phone, length: {in: 9..12}
	validates :password, length: {in: 8..12}
  has_many :user_tickets
	has_many :tickets, :through => :user_tickets
end
