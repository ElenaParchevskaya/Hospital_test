class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :patient, dependent: :destroy
  has_many :doctor, dependent: :destroy
  enum role: [:patient, :doctor, :admin]

  def get_full_name(user_id)

  end

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end

  validates :phone_number, uniqueness: true

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
