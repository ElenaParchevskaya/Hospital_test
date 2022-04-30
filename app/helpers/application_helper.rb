module ApplicationHelper
  def avatar_for(user)
    @avatar = user.avatar
    if !@avatar.attached?
      image_path('avatars.jpg')
    else
      @avatar.url
    end
  end
end
