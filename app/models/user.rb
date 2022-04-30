class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :patient, dependent: :destroy
  has_many :doctor, dependent: :destroy
  enum role: [:patient, :doctor, :admin]

  validates :phone_number,uniqueness: true
  validates_format_of :phone_number,:with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
  validates_length_of :phone_number,:minimum => 6,:maximum => 24
  validates :email,uniqueness: true

  def get_recommendation(doctor_id, patient_id)
    if Recommendation.exists?(doctor_id: doctor_id, patient_id: patient_id)
      Recommendation.find_by(doctor_id: doctor_id, patient_id: patient_id).recommendation
    end
  end

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
