class GameController < ApplicationController
  def index
    @question = Question.find(1)
    @game = Game.new(user_id: current_user.id, question_id: @question.id)
    @game.save
  end

  def new

  end

  def create
  end

  def game
    @game = Game.find_by_user_id(current_user.id)
    if @game != nil
      if @game.count_question < 25
      @question = Question.find(random)
      @game.update_attributes(count_question: @game.count_question + 1, question_id: @question.id, current_score: isGood)


      respond_to do |format|
        format.js { render :layout=>false }
        format.html { render 'game/index' }
      end

      else
      @game = Game.find_by_user_id(current_user.id)

      respond_to do |format|
        format.js { render 'game/gameover' }
        format.html { redirect_to '/' }
        @game.destroy
      end
      end
    else

      @question = Question.find(random)
      @game = Game.new(user_id: current_user.id, question_id: @question.id)
      @game.save
      render 'game/index'

    end

  end


  def isGood
    answer = Question.find(@game.question_id)
    if params[:answer] == answer.good
      @game.current_score + 100
    else
      @game.current_score
    end

  end

  def random
    rnd = Random.new
    rnd.rand(1..5)
  end


end
