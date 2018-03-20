class CompetencesController < ApplicationController

  def index
    @competences = Competence.all
    @user = current_user
    @user_correct_answers = UserAnswer.where(:user_id => @user, correct: true).count
    @user_wrong_answers = UserAnswer.where(:user_id => @user, correct: false).count
    @user_today_answers = UserAnswer.where(:user_id => @user, updated_at: Date.today.beginning_of_day..Date.today.end_of_day).count
    @user_today_correct_answers = user_today_correct_answers
    @user_today_wrong_answers = user_today_wrong_answers
    @correct_daily_answer_pct = correct_daily_answer_pct
    @wrong_daily_answer_pct = wrong_daily_answer_pct
  end

  def show
    @competence = Competence.find(params[:id])
    random_game
  end

  private

  def random_game
   @competence.games.sample
  end

  def wrong_daily_answer_pct
    if @user_today_wrong_answers == 0
      0
    else
      @user_today_wrong_answers * 100 / (@user_today_wrong_answers + @user_today_correct_answers)
    end
  end

  def correct_daily_answer_pct
    if @user_today_correct_answers == 0
      0
    else
      @user_today_correct_answers * 100 / (@user_today_correct_answers + @user_today_wrong_answers)
    end
  end

  def user_today_correct_answers
    UserAnswer.where(:user_id => @user, updated_at: Date.today.beginning_of_day..Date.today.end_of_day, :correct => true).count
  end

  def user_today_wrong_answers
    UserAnswer.where(:user_id => @user, updated_at: Date.today.beginning_of_day..Date.today.end_of_day, :correct => false).count
  end

end
