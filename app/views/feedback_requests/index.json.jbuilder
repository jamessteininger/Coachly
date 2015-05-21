json.array!(@feedback_requests) do |feedback_request|
  json.extract! feedback_request, :id, :user_id, :sender_id, :prompt, :b_read
  json.url feedback_request_url(feedback_request, format: :json)
end
