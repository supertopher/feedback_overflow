class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def show
    @topic = Topic.find_by_slug(params[:stub])
  end

  def edit
    @topic = Topic.find_by_slug(params[:stub])
  end

  def create
    @topic = Topic.create(params[:topic])
    redirect_to topic_url(@topic.slug)
  end
end
