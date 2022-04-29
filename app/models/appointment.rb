class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def get_sh

  end
end
