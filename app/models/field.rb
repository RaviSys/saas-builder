class Field < ApplicationRecord
  FIELD_TYPE = [
    ['Text', 'string'], 
    ['Textarea', 'text'], 
    ['Password', 'password'], 
    ['Email', 'email'], 
    ['Date', 'date'], 
    ['File', 'file'], 
    ['Select', 'select'], 
    ['Number', 'number']
  ]
  belongs_to :dataset
  has_many :field_values
end
