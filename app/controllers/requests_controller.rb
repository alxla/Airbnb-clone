class RequestsController < ApplicationController
  before_action :find_request, only: [:show, :edit, :destroy, :update]
  before_action :find_current_profile, only: [:index]


  def index
    @requests = Request.all.select { |request| Profile.find(request.profile_id) == @current_profile || Profile.find(request.profile_artist_id) == @current_profile }
    @messages = Message.all.sort_by{|e| e[:created_at]}
    @message = Message.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def find_current_profile
    @current_profile = Profile.find(params[:profile_id])
  end

  def find_request
    @request = Request.find(params[:id])
  end

  def message_params
    # *Strong params*: You need to *whitelist* what
    # can be updated by the user
    # Never trust user data!
    params.require(:request).permit(:status, :product_id, :profile_id, :profile_artist_id)
  end
end
