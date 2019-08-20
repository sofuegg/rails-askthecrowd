class Api::V1::QuestionsController < Api::V1::BaseController
  before_action :authenticate_v1_user, only: %i[my_responses, asked_question]
  skip_before_action :verify_authenticity_token, only: %i[create]
  before_action :get_question, only: %i[show]

  def index
    @questions = Question.all
  end

  def my_responses
    @questions = Question.all
    @user = User.find(params[:user_id])
    # p "user inside my responses"
    # p @user
    @my_responses = @questions.select {|question| question.answers.any?{|answer| answer.user_id = @user.id}}
    # @my_responses.each do |r|
    #   if r.answers.any?{|a| a.user_id == 22}
    #     p "answer with user id 22 found"
    #   end
    # end
    # p @my_responses.size
  end

  def asked_questions
    @questions = Question.all
    @user = User.find(params[:user_id])
    p @user
    p @questions_asked = @questions.select{ |question| question.user_id = @user.id }
  end

  def show
    @question
    @choice1=@question.choices.first
    @choice2=@question.choices.last
  end

  def create
    @question = Question.new({ title: all_params[:title], photo: all_params[:photoq] })
    @user = User.find(all_params[:userid])
    @question.user = @user
    @choice1 = Choice.new({ text: all_params[:texta], photo: all_params[:photoa] })
    @choice2 = Choice.new({ text: all_params[:textb], photo: all_params[:photob] })
    @choice1.question = @question
    @choice2.question = @question
    # render json: @question
    unless @question.save && @choice1.save && @choice2.save
      render json: {q: @question.errors.full_messages, c1: @choice1.errors.full_messages, c2: @choice2.errors.full_messages}
    end
  end

  private

  def get_question
    @question = Question.find(params[:id])
  end

  def all_params
    params.permit(:title, :photoq, :texta, :photoa, :textb, :photob, :userid)
  end

end