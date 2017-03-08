module ApplicationHelper
  def avatar_for_user(user)
    if user.photo?
      cl_image_tag(user.photo.path, class: "card-avatar")
    elsif user.facebook_picture_url
      image_tag(user.facebook_picture_url, class: "card-avatar")
    else
      image_tag("avatar.png", class: "card-avatar")
    end
  end

def avatar_for_user_show(user)
    if user.photo?
      cl_image_tag(user.photo.path, class: "space-owner")
    elsif user.facebook_picture_url
     image_tag(user.facebook_picture_url, class: "space-owner")
    else
      image_tag("avatar.png", class: "space-owner")
    end
  end

  def avatar_for_user_dashboard(user)
    if user.photo?
      cl_image_tag(user.photo.path, class: "dash-ownerpic")
    elsif user.facebook_picture_url
      image_tag(user.facebook_picture_url, class: "dash-ownerpic")
    else
      image_tag("avatar.png", class: "dash-ownerpic")
    end
  end

def avatar_for_user_navbar(user)
    if user.photo?
      cl_image_tag(user.photo.path, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown")
    elsif user.facebook_picture_url
      image_tag(user.facebook_picture_url, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown")
    else
      image_tag("avatar.png", class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown")
    end
  end

end



