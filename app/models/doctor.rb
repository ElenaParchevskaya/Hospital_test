class Doctor < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :categories
end
