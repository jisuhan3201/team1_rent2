class RequestsController < ApplicationController
  before_action :set_request, only: [:index, :new, :show, :edit, :update, :destroy]

  def index
    @owner = User.find(Item.find(params[:item_id]).user_id)
  end

  def new
    @owner = User.find(Item.find(params[:item_id]).user_id)
  end

  def show
  end

  def create
    @request = Request.new(request_params)
    @request.save
    render text: "success"
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
      params.require(:request).permit(:item_id, :user_id, :owner_id, :status, :rent_begin_date, :rent_due_date)
    end
end
