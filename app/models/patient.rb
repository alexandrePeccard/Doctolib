class Patient < ApplicationRecord
	has_many :appoitments
	has_many :doctors, through: :appoitments
	belongs_to :city
end