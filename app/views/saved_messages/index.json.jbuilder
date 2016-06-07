json.array!(@saved_messages) do |saved_message|
  json.extract! saved_message, :id, :title, :body
  json.url saved_message_url(saved_message, format: :json)
end
