module ApplicationHelper
  def pet_image_url(pet)
    pet.photo.attached? ? "url('#{cl_image_path(pet.photo.key)}')" : "url(https://images.unsplash.com/photo-1560743641-3914f2c45636?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=633&q=80)"
  end

  def user_image_url(user)
    (user && user.photo.attached?) ? cl_image_path(user.photo.key) : 'https://images.unsplash.com/photo-1557318041-1ce374d55ebf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
  end
end
