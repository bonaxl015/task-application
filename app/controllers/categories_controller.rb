class CategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category, only: %i[edit update destroy]

  def index
    @categories = Category.where(user_id: current_user.id)
  end

  def new
    @category = current_user.categories.build
  end

  def create
    @category = current_user.categories.build(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to categories_path, notice: "Category was successfully created." }
        format.json { render :index, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
          format.html { redirect_to @category, notice: 'Category was successfully updated.' }
          format.json { render :show, status: :ok, location: @category }
      else
          format.html { render :edit }
          format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_category
     @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :image_url, :user_id)
  end
end
