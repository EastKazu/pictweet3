class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to action: :index
  end

  def destroy
    tweet.destroy
    redirect_to action: :index
  end

  def edit
  end

  def update
    tweet.update(tweet_params)
    redirect_to action: :index
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :text, :image)
  end

def set_tweet
  @tweet = Tweet.find(params[:id])
end

end
