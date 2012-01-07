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

end
