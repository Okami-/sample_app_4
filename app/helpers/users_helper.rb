module UsersHelper

  # Returns the Gravatar (http://gravatar.ocm/) for the given user.
  def gravatar_for(user, options = { size: 40 } )
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
