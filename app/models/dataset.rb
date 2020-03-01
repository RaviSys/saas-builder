class Dataset < ApplicationRecord
  has_many :dataset_records
	has_many :fields, inverse_of: :dataset
	accepts_nested_attributes_for :fields, reject_if: :all_blank, allow_destroy: true

	validates :name, :description, presence: true

  before_create :generate_token

  protected

  def generate_token
    self.token = loop do
      random_token = SecureRandom.uuid
      break random_token unless Dataset.exists?(token: random_token)
    end
  end
end
