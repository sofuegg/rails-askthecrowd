class Api::V1::QuestionsController < Api::V1::BaseController

  skip_before_action :verify_authenticity_token, only: %i[create]
  before_action :get_question, only: %i[show]

  def index
    @questions = Question.all
  end

  def show
    @question
  end

  def create
    @question = Question.create({ title: all_params[:title], photo: all_params[:photoq], user_id: all_params[:userid] })
    @choice1 = Choice.create({ text: all_params[:texta], photo: all_params[:photoa], question_id: @question.id })
    @choice2 = Choice.create({ text: all_params[:textb], photo: all_params[:photob], question_id: @question.id })
    # render json: @question
  end

  private

  def get_question
    @question = Question.find(params[:id])
  end

  def all_params
    params.permit( :title, :photoq, :texta, :photoa, :textb, :photob, :userid, :__webviewId__, :format, :question )
  end

end
