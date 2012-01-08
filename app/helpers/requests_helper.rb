module RequestsHelper

  def get_status(status)
     case status
       when 0
         "rejected"
       when 1
         "pending"
       when 2
         "accepted"
       when 3
         "rented"
       when String
         "error - string passed"
       else
         "error"
     end
  end

  def get_user_email(id)
    User.find(id).email.to_s
  end


  # options => :all  return all options
  # options => :pending return options for pending status (accepted/rejected)
  # options => :accepted return options for accepted status (rented/rejected)
  def get_status_collection(options)
    case options
      when :all
        {get_status(1) => 1, get_status(2) => 2, get_status(3) => 3, get_status(0) => 0}
      when :pending
        {get_status(2) => 2, get_status(0) => 0}
      when :accepted
        {get_status(3) => 3, get_status(0) => 0}
    end

  end

end
