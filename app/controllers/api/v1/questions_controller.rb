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
    @question = Question.create({ title: all_params[:title], photo: all_params[:photoq] })
    @choice1 = Choice.create({ text: all_params[:texta], photo: all_params[:photoa], question_id: @question.id })
    @choice2 = Choice.create({ text: all_params[:textb], photo: all_params[:photob], question_id: @question.id })

    # @choices = Choice.new(choices_params)
    # @choices[0].question = @question
    # @choices[1].question = @question
    # @choices[0].save
    # @choices[1].save
    # render :show
  end

  # def result_to_my_question
  #   no_of_answers_to_this_question = @question.answers.count
  #   @choice_one = Choice.find[params[:id]]
  #   no_of_answers_to_choice_one = @choice_one.answers.count
  #   no_of_answers_to_choice_one/no_of_answers_to_this_question
  # end

  private

  def get_question
    @question = Question.find(params[:id])
  end
  
  def all_params
    params.permit( :title, :photoq, :texta, :photoa, :textb, :photob )
  end

  # def question_params
  #   params.require(:question).permit( :title, :photo, :active, :user_id, :choices, :text )
  # end

  # def choices_params
  #   params.permit(:choices, array: [:text, :photo])
  # end

end
