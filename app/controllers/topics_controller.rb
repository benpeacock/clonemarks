class TopicsController < ApplicationController

  before_filter :set_topic, except: [:index, :create]

  def create
  end

  def index
    @topics = Topic.all
  end

  def show
  end

  def destroy
  end

  def update
  end

  private

  def set_topic
    @topic = Topic.find(params[:id])
  end
end
