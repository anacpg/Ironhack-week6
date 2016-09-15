class BidsController < ApplicationController

  before_action :set_bid, only: [:show, :edit, :update, :destroy]
  def index
    @product = Product.find(params[:product_id])
    @bids = Bid.where(product: @product)
  end

  # GET /bids/1
  def show
  end

  # GET /bids/new
  def new
    @bid = Bid.new
  end

  def create
    @user = User.find(params[:user_id])
    @product = Product.find(params[:product_id])
    @bid = Bid.new({user: @user, product: @product})
    @bid.update(bid_params)

    #raise @user.inspect
    #raise @bid.inspect
    if @bid.save
      redirect_to action: 'index', controller: 'products', user: @user
    else
      render 'new'
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid
      @bid = Bid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_params
      params.require(:bid).permit(:amount)
    end
end
