class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  helper_method :resource_name, :resource, :devise_mapping, :resource_class

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def home

  end

  def welcome

  end

  def finish_game
    @competences = Competence.all
    @user = current_user
    @questions = Question.all
    @question_count = number_of_questions_in_game
    @questions_in_game = questions_in_game
    @questions_correct = number_of_user_correct
  end

  def admin

  end

  private

  def number_of_questions_in_game
    @q = @user.user_answers.sort_by {|answer| answer.updated_at}.last
    @q.question.game.questions.size
  end

  def questions_in_game
    @q.question.game.questions
  end

  def number_of_user_correct
    @user.user_answers.where(question_id: @questions_in_game, correct: true).size
  end

end
