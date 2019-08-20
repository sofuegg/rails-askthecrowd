json.question_lists do
  json.array! @questions do |question|
    json.extract! question, :id, :title, :photo, :active
    # json.user_info question.user.nickname
    json.choice_info question.choices
    # if question.answers.count != 0
      json.percentage_one question.statistics[0]
      json.percentage_two question.statistics[1]
    # else
    #   json.percentage_one 5
    #   json.percentage_two 5
    # end
  end
end
