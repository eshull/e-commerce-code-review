class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
    @product = @products.new(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(product_params)
    binding.pry
     if @product.save
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      flash[:notice] = "Error occurred while updating!"
    end
  end

  def destroy
     @product = Product.find(params[:id])
     @product.destroy
     flash[:notice] = "Product successfully destroyed!"
     redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
