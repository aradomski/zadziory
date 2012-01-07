class RequestStatus < ClassyEnum::Base
  enum_classes :pending, :accepted, :rejected, :rented
end

class RequestStatusPending < RequestStatus
end

class RequestStatusAccepted < RequestStatus
end

class RequestStatusRejected < RequestStatus
end

class RequestStatusRented < RequestStatus
end

