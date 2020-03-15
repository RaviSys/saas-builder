class DatasetRecord < ApplicationRecord
  has_many :field_values
  belongs_to :dataset
  accepts_nested_attributes_for :field_values, reject_if: :all_blank, allow_destroy: true
  
  before_create :generate_token

  protected

  def generate_token
    self.token = loop do
      random_token = SecureRandom.uuid
      break random_token unless DatasetRecord.exists?(token: random_token)
    end
  end
end
