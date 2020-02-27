class Dataset < ApplicationRecord
	has_many :fields, inverse_of: :dataset
	accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true

	validates :name, :description, presence: true
end
