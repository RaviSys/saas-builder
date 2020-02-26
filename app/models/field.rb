class Field < ApplicationRecord
  belongs_to :dataset
  has_many :field_values
end
