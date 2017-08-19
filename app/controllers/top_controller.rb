class TopController < ApplicationController
  def index
    @question = Question.new
    @questions = current_user.group.questions #現在ログインしているユーザーが所属するグループのquestionを全て取得する
  end
end
