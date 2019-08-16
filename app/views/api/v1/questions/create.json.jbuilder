json.question_info do
  json.extract! @question, :id, :title, :photo, :active
end
