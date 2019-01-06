module ApplicationHelper
  def welcome_message
    return "guest" unless current_user
    current_user.email
  end

  def gravatar_for(user, opts = {})
    opts[:alt] = user.name
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}?s=#{opts.delete(:size) { 40 }}", opts
  end
end
