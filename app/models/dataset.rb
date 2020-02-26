class Dataset < ApplicationRecord
	has_many :fields
	validates :name, :description, presence: true
end
