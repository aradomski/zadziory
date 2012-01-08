module ApplicationHelper

def flash_display
  response = ""
  flash.each do |name, msg|
    response = response + content_tag(:div, msg, :id => "flash_#{name}")
  end
  flash.discard
  response
end

  def get_user_email(id)
    User.find(id).email.to_s
  end
    def get_user_username(id)
    User.find(id).username.to_s
  end

end
