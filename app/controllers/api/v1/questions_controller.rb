class Api::V1::QuestionsController < Api::V1::BaseController

  skip_before_Action :verify_authencity_token, only: %i[create]
  before_action :get_question, only: %i[show]

  def index
    @questions = Question.all
  end

  def show
    @question
  end

  def create
    @question = Question.new(question_params)
    @question.save
    render :show
  end

  # def result_to_my_question
  #   no_of_answers_to_this_question = @question.answers.count
  #   @choice_one = Choice.find[params[:id]]
  #   no_of_answers_to_choice_one = @choice_one.answers.count
  #   no_of_answers_to_choice_one/no_of_answers_to_this_question
  # end

  private

  def get_question
    @question = Question.find[params[:id]]
  end

  def question_params
    @params.require(:question).permit( :title, :photo, :active, :user_id )
  end

end
