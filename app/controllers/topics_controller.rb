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
end
