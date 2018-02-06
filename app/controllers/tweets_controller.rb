class TweetsController < ApplicationController

  def index
    @users = User.all # 基於測試規格，必須講定變數名稱，請用此變數中存放關注人數 Top 10 的使用者資料
    @tweets = Tweet.all
  end

  def create
    @tweet = current_user.tweets.create(tweet_params)
  end

  def like
  end

  def unlike
  end

  private
  def tweet_params
    params.require(:tweet).permit(:description, :user_id)
  end

end
