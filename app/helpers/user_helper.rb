module UserHelper
  def get_full_name(doctor_id)
    messages = {}
    doctor = Doctor.find(doctor_id)
    user = User.find(doctor.user_id)
    messages["first_name"] = user.first_name
    messages["last_name"] = user.last_name
    messages["phone_number"] = user.phone_number
    messages["doctor_category"] = doctor.category.name
    messages
  end
  def get_fal(collection)
    print(collection)
  end
end
