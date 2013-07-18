class CommentsController < ApplicationController
  before_filter :is_signed_in?, :only => [:create]

	def create
		comment = Comment.create(params[:comment])
		topic = comment.topic
    redirect_to topic_path(topic.slug)
	end

  private
    def is_signed_in?
      if !signed_in?
        redirect_to login_path
      end
    end
end
