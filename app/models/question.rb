class Question < ApplicationRecord
  belongs_to :user, optional: true
  has_many :answers, dependent: :destroy

  NUMBER_OF_PERMITTED_CHOICES = 2
  has_many :choices, dependent: :destroy, before_add: :validate_choice_limit

  def statistics
    choice_one = self.choices.first
    choice_two = self.choices.last
    self.choices
    no_of_answers_to_choice_one = choice_one.answers.count
    no_of_answers_to_choice_two = choice_two.answers.count
    sum_of_answers = no_of_answers_to_choice_one + no_of_answers_to_choice_two
    @percentage_one = (no_of_answers_to_choice_one.to_f/sum_of_answers)*100
    @percentage_two = (no_of_answers_to_choice_two.to_f/sum_of_answers)*100
    return [@percentage_one, @percentage_two]
  end

  private

  def validate_choice_limit(question)
    raise Exception.new if question.choices.size >= NUMBER_OF_PERMITTED_CHOICES
  end

end
