
json.question_info do
  json.extract! @question, :id, :title, :photo, :active
  json.choice_one @choice1, :id, :texta, :photoa
  json.choice_two @choice2, :id, :texta, :photoa
  json.percentage_one @question.statistics[0]
  json.percentage_two @question.statistics[1]
end
