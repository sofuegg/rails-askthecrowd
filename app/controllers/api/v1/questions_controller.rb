class Api::V1::QuestionsController < Api::V1::BaseController
  # before_action :authenticate_v1_user, only: [:my_responses, :asked_question]
  skip_before_action :verify_authenticity_token, only: [:create, :update]
  before_action :get_question, only: [:show, :update]

  def index
    @questions = Question.all.order(created_at: :desc)
    p @questions
    @active_questions = @questions.select {|question| question.active == true}
    p @active_questions
    @user = User.find(params[:user_id])
    p@user
    @questions_answered = @questions.select {|question| question.answers.any?{|answer| answer.user_id == @user.id}}
    @questions_not_answered = @active_questions - @questions_answered
    @questions_not_answered[0..20]
  end

  def my_responses
    @questions = Question.eager_load(:answers).order("answers.created_at DESC")
    # @questions = Question.all.order(created_at: :desc)
    p @questions
    @user = User.find(params[:user_id])
    p@user
    @my_responses = @questions.select {|question| question.answers.any?{|answer| answer.user_id == @user.id}}
    # @my_responses = my_responses.eager_load(:answers).order("answers.created_at DESC") #where(category: "your category", listings: { active: true }).first(2)

  end

  def asked_questions
    @questions = Question.all.order(created_at: :desc)
    @user = User.find(params[:user_id])
    p @user
    p @questions_asked = @questions.select{ |question| question.user_id == @user.id }
  end

  def show
    @user = User.find(params[:user_id])
    if @question.answers.any?{|answer| answer.user_id == @user.id}
      @what_happens_after_click = true
    else
      @what_happens_after_click = false
    end
    @choice1 = @question.choices.first
    @choice2 = @question.choices.last
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

  def update
    @question.active = true
    @question.save
    @choice1 = @question.choices.first
    @choice2 = @question.choices.last
  end

  private

  def get_question
    @question = Question.find(params[:id])
  end

  def all_params
    params.permit(:title, :photoq, :texta, :photoa, :textb, :photob, :userid)
  end

end
