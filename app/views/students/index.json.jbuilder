json.array!(@students) do |student|
  json.extract! student, :id, :CWID, :first_name, :last_name, :teacher, :count
  json.url student_url(student, format: :json)
end
