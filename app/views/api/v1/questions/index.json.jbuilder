json.question_lists do
  json.array! @questions do |question|
    json.extract! question, :title, :photo, :active
    json.user_info @question.user.nickname
    json.choice_info @question.choices
    json.answer_info @question.answers
  end
end
