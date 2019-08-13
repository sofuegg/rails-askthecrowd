json.answer_info do
  json.extract! @answer, :question_id, :choice_id, :usere_id
  json.new_photo @answer.choice.photo
  jsopn.new_text @answer.choice.text
end
