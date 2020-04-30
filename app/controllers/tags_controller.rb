class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
  
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash[:success] = "Tag '#{@tag.name}' Deleted!"
    redirect_to tags_path
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end

end


