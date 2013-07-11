class CommentsController < ApplicationController
  def new
    @Comment = Comment.new
    @Product = Product.find(params[:product_id])
  end

  def index
    @Comment = Comment.all
  end

  def show
    @Comment = Comment.find(params[:id])
  end

  def edit
    @Comment = Comment.find(params[:id])
  end

  def create
    @Comment = Comment.new(params[:comment])
    @Product = Product.find(params[:product_id])
    if @Comment.save
      flash[:success] = "Comment has been added."
      redirect_to product_path(@Product)
    # else
    #   flash.now[:errors] = @Category.errors.full_messages
    #   flash.keep
    #   @errors = @Category.errors.full_messages
    #   render action: "new"
    end 
  end


  def destroy
    @Comment = Comment.find(params[:id])
  end

  def update
    @Comment = Comment.find(params[:id])
  end
end
