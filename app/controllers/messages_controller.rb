class MessagesController < ApplicationController
  before_action :find_message, only: [:show, :edit, :destroy, :update]

  def index
    @messages = Message.all
  end

  def show
  end

  def new
    @message = Message.new
    @profiles = Profile.all
    @requests = Request.all
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to message_path(@message) # Show
  end

  def edit
    @profiles = Profile.all
    @requests = Request.all
  end

  def update
    @message.update(message_params)
    redirect_to message_path(@message) # Show

  end

  def destroy
    @message.destroy
    redirect_to messages_path
  end

  private

  def find_message
    @message = Message.find(params[:id])
  end

  def message_params
    # *Strong params*: You need to *whitelist* what
    # can be updated by the user
    # Never trust user data!
    params.require(:message).permit(:thread_number, :title, :body, :request_id, :profile_id)
  end
end
