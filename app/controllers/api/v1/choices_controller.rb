class Api::V1::ChoicesController < Api::V1::BaseController

  skip_before_Action :verify_authencity_token, only: %i[create]
  before_action :get_question, only: %i[result_to_my_question]


  def create
    @choice = Choice.new(choice_params)
    @choice.save
  end

  def result_to_my_question
    @choice_one = @question.choices.first
    @choice_two = @quetion.choices.last
    no_of_answers_to_choice_one = @choice_one.answers.count
    no_of_answers_to_choice_two = @choice_two.answers.count
    sum_of_answers = no_of_answers_to_choice_one + no_of_answers_to_choice_two
    @percentage_one = no_of_answers_to_choice_one/sum_of_answers
    @percentage_two = no_of_answers_to_choice_two/sum_of_answers
  end

  private

  def get_question
    @question = Question.find[params[:id]]
  end

  def choice_params
    params.require(:choice).permit( :photo, :text, :question_id )
  end

end
