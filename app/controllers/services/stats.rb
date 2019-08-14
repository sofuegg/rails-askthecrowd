class Stats

  def self.statistics
    choice_one = @question.choices.first
    choice_two = @question.choices.last
    @question.choices
    no_of_answers_to_choice_one = choice_one.answers.count
    no_of_answers_to_choice_two = choice_two.answers.count
    sum_of_answers = no_of_answers_to_choice_one + no_of_answers_to_choice_two
    @percentage_one = (no_of_answers_to_choice_one.to_f/sum_of_answers)*100
    @percentage_two = (no_of_answers_to_choice_two.to_f/sum_of_answers)*100
  end


end
