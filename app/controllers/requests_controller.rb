class RequestsController < ApplicationController
  before_action :set_request, only: [:new, :show, :edit, :update, :destroy]

  def index
  end

  def new
    @user_email = User.find(Item.find(params[:item_id]).user_id).email
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @item = Item.find(params[:item_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:owner_id, :rent_begin_date, :rent_due_date)
    end
end
