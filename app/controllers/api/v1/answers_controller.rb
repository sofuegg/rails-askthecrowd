class Api::V1::AnswersController < Api::V1::BaseController

  skip_before_Action :verify_authencity_token, only: %i[create]
  # before_action :get_question, only: %i[poll_stats]

  def index
    @answers = Answer.all
  end

  def create
    @answer = Answer.new(answer_params)
  end

  # def poll_stats
  #   no_of_answers_to_this_question = @question.answers.count
  #   @choice_one = Choice.find[params[:id]]
  #   no_of_answers_to_choice_one = @choice_one.answers.count
  #   no_of_answers_to_choice_one/no_of_answers_to_this_question
  # end

  private

  # def get_question
  #   @question = Question.find[params[:id]]
  # end

  def answer_params
    params.require(:answer).permit( :user_id, :choice_id, :question_id )
  end

end
