class TopController < ApplicationController
  def index
    @question = Question.new
    feed_contents = current_user.group.feed_contents.includes(:content)
    # 現在ログインしているユーザーのfeed_contentを複数取得する
    @feed_contents = feed_contents.map(&:content)
    # feed_contentsからそれぞれcontentのみ取得する
  end
end
