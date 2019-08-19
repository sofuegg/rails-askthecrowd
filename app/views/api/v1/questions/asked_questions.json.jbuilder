json.question_lists do
  json.array! @questions_asked do |question|
    json.extract! question, :id, :title, :photo, :active
    # json.user_info question.user.nickname
    json.choice_info question.choices
    json.percentage_one question.statistics[0]
    json.percentage_two question.statistics[1]
  end
end
