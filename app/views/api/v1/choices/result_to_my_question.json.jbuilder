json.result_info do
  json.extract! @question, :title, :photo, :active
  json.user_info @question.user.nickname
  json.choice_info @question.choices
  json.percentage_one @percentage_one
  json.percentage_two @percentage_two
end
