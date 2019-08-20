json.question_lists do
  json.extract! @question, :id, :title, :photo, :active
  json.choice_info @question.choices
  json.percentage_one @question.statistics[0]
  json.percentage_two @question.statistics[1]

end
