class Doctor < ApplicationRecord
	has_many :appoitments
	has_many :patients, through: :appoitments
	has_and_belongs_to_many :specialities
	belongs_to :city
end