class Recommendation < ApplicationRecord
  belongs_to :patient
  has_many :doctors
  has_many :patients
end
