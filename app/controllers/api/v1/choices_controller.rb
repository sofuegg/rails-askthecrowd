class Api::V1::ChoicesController < Api::V1::BaseController

  skip_before_action :verify_authenticity_token, only: %i[create]
  before_action :get_question, only: %i[result_to_my_question]


  def create
    @choice = Choice.new(choice_params)
    @choice.save
  end

  def index
    @choices = Choice.all
  end

  def result_to_my_question
  end

  private

  def get_question
    @question = Question.find(params[:question_id])
  end

  def choice_params
    params.require(:choice).permit( :photo, :text, :question_id )
  end

end
