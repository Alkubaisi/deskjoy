module ApplicationHelper
  def avatar_for_user(user)
    if user.photo?
      cl_image_tag(user.photo.path, class: "card-avatar")
    else
      image_tag("avatar.png", class: "card-avatar")
    end
  end

def avatar_for_user_show(user)
    if user.photo?
      cl_image_tag(user.photo.path, class: "avatar-bordered")
    else
      image_tag("avatar.png", class: "avatar-bordered")
    end
  end


end



