class Api::V1::AnswersController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: %i[create]
  # before_action :get_question, only: %i[poll_stats]

  def index
    @answers = Answer.all
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.save
  end

  private

  def answer_params
    params.require(:answer).permit( :user_id, :choice_id, :question_id )
  end

end
