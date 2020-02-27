class Field < ApplicationRecord
  FIELD_TYPE = ['Text', 'Textarea', 'Password', 'Email', 'Date', 'File', 'Select', 'Number']
 
  belongs_to :dataset
  has_many :field_values
end
