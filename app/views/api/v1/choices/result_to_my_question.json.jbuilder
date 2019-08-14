json.result_info do
  json.extract! @question, :title, :photo, :active
  # json.user_info @question.user.nickname
  json.choice_info @question.choices
  json.percentage_one @question.statistics[0]
  json.percentage_two @question.statistics[1]
end
