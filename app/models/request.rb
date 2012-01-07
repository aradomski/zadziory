class Request < ActiveRecord::Base

  classy_enum_attr :status, :enum => :request_status

end
