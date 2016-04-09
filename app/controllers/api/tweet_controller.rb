class Api::TweetController < ApplicationController
  before_action :authenticate_user!

  def tweet
    json = JSON.parse(params["data"])
    current_user.tweets.create(body: json["tweet"].to_s)
    render json: { status: 'OK' }
  end

  def user_timeline
    tweets = Tweet.tweets(current_user.id)
    render json: { tweets: tweets.map(&:body) }
  end
end
