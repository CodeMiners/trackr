json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :details, :user_id
  json.url task_url(task, format: :json)
end
