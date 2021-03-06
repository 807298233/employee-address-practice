
response_status ||= @response_status

json.status do |json|

  json.code (response_status.try(:code) || ResponseStatus::Code::ERROR).to_s

  message = response_status.try(:message)

  json.message message if message.present?

end