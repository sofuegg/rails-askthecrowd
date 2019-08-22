class Question < ApplicationRecord
  belongs_to :user, optional: true
  has_many :answers, dependent: :destroy
  NUMBER_OF_PERMITTED_CHOICES = 2
  has_many :choices, dependent: :destroy, before_add: :validate_choice_limit

  def questions_with_most_recent_answers
    Question.include(:answers).ordered_by_most_recent
  end

  def statistics
    choice_one = self.choices.first
    choice_two = self.choices.last
    self.choices
    no_of_answers_to_choice_one = choice_one.answers.count
    p no_of_answers_to_choice_one
    no_of_answers_to_choice_two = choice_two.answers.count
    p no_of_answers_to_choice_two
    sum_of_answers = no_of_answers_to_choice_one + no_of_answers_to_choice_two
    p sum_of_answers
    if sum_of_answers == 0
      puts sum_of_answers
      @percentage_one = 0
      @percentage_two = 0
    else
      @percentage_one = ((no_of_answers_to_choice_one.to_f/sum_of_answers)*100.00)
      @percentage_two = ((no_of_answers_to_choice_two.to_f/sum_of_answers)*100.00)
    end
    return [@percentage_one.round(1), @percentage_two.round(1)]
  end

  private

  def validate_choice_limit(question)
    raise Exception.new if question.choices.size >= NUMBER_OF_PERMITTED_CHOICES
  end

end
