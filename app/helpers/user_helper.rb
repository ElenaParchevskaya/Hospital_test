module UserHelper
  def get_phone_number(patient_id)
    User.find(patient_id).phone_number
  end
end
