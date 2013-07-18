class UpvotesController < ApplicationController
  # before_filter :is_signed_in

  def create
    upvote = Upvote.new(user_id: current_user.id, topic_id: params[:format])
    if upvote.save
      render :json => {:status => 'success' }, :status => :ok
    else
      render :json => {:error => 'Already voted'}, :status => :unprocessable_entity
    end
  end
end
