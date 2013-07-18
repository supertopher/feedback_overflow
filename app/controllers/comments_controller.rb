class CommentsController < ApplicationController
	def create
		comment = Comment.create(params[:comment])
		topic = comment.topic
    redirect_to topic_path(topic.slug)
	end
end