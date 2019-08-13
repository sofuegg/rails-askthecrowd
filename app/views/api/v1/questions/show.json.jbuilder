json.question_info do
  json.extract! @question, :title, :photo, :active
  json.choice_info @question.choices
  # json.user_info @question.user.nickname
  # json.answer_info @question.answers
end
