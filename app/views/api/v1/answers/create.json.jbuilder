json.answer_info do
  json.extract! @answer, :question_id, :choice_id
  json.new_photo @answer.choice.photo
  json.new_text @answer.choice.text
end
