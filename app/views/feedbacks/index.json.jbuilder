json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :user_id, :author_id, :positive_content, :improvement_content, :tags
  json.url feedback_url(feedback, format: :json)
end
