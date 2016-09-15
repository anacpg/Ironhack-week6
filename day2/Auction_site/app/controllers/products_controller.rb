class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.find(params[:user_id])

    # @products = Product.where(user_id: @user)
    @products = Product.all
  end

  def new
    @user = User.find(params[:user_id])
    # @product = Product.new
    @product = @user.products.new

  end

  def create

    #raise.params.inspect
    # raise params.inspect
    # par = product_params
    # par.push(params.require(:product).permit(:user_id))
    # @user = User.find(params[:user_id])
    #@product = Product.new(user: @user)

    @user = User.where({name: 'undefinded'})
    @product = Product.new({user_id:4})
    @product.update(product_params)

    #raise @user.inspect

    if @product.save

      redirect_to action: 'index', controller: 'products', user: @user
    else
      render 'new'
    end

  end

  def show
    @user = User.find(params[:user_id])
    @product = Product.find(params[:id])

    @bid = Bid.new(product: @product, user: @user)
    @bids = Bid.where(product: @product)

    if @product.deadline > Date.today
      max_amount = @bids.maximum(:amount)
      user = @bids.where(amount: max_amount).pluck(:user_id)

      @product.update({user_id: 2})
      #raise @product.inspect
    end

    @winner_user = @product.user
    
    # @bid = Bid.new(product_id_id: @product)

  end


  def destroy
    @product.destroy
    redirect_to products_path, notice: 'Product was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :deadline)
    end
end
