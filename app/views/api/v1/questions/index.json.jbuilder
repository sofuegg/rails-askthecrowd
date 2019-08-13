json.question_lists do
  json.array! @questions do |question|
    json.extract! question, :id, :title, :photo, :active
    # json.user_info question.user.nickname
    json.choice_info question.choices
    json.stats_first @percentage_one
    json.stats_last @percentage_two
  end
end
