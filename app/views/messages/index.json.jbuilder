json.array!(@messages) do |message|
  json.from message.from.username
  json.extract! message, :id, :to_id, :from_id, :body
  json.url message_url(message, format: :json)
end
