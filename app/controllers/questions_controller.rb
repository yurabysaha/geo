class QuestionsController < ApplicationController

  def new
  end
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to '/questions/new'
    else
      redirect_to '/signup'
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :A, :B, :C, :D, :good)
  end

end
