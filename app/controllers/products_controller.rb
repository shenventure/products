class ProductsController < ApplicationController
  def index
    @Product = Product.all
  end

  def show
    @Product = Product.find(params[:id])
    @Products = Product.all
    @Comment = Comment.all
    @Comments = Product.find(params[:id]).comments
  end

  def new
    @Product = Product.new
  end

  def edit
    @Product = Product.find(params[:id])
  end

  def create
    @Product = Product.new(params[:product])
    if @Product.save
      flash[:success] = "Product has been successfully added!"
      redirect_to @Product
    else
      flash.now[:errors] = @Product.errors.full_messages
      flash.keep
      @errors = @Product.errors.full_messages
      render action: "new"
    end   
  end

  def update
    @Product = Product.find(params[:id])

    if @Product.update_attributes(params[:product])
      flash[:message] = "Product has been sucessfully updated."
      redirect_to @Product, notice: "Product updated!"
    else
      render @User  
    end
  end

  def destroy
  end
end
