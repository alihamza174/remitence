json.extract! student, :id, :name, :rollnumber, :results, :created_at, :updated_at
json.url student_url(student, format: :json)
