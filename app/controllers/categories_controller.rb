class CategoriesController < ApplicationController
  def index
    @Category = Category.all
  end

  def new
    @Category = Category.new
  end

  def edit
    @Category = Category.find(params[:id])
  end

  def create
     @Category = Category.new(params[:category])
     if @Category.save
      flash[:success] = "Category has been created."
      redirect_to @Category
     else
      flash.now[:errors] = @Category.errors.full_messages
      flash.keep
      @errors = @Category.errors.full_messages
      render action: "new"
     end 
  end

  def destroy
    @Category = Category.find(params[:id])
  end

  def update
    @Category = Category.find(params[:id])
  end

  def show
    @Category = Category.find(params[:id])
  end
end
