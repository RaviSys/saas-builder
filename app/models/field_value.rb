class FieldValue < ApplicationRecord
  belongs_to :field
  belongs_to :dataset_record
end
