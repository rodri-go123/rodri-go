class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit destroy update]

  def index
    @projects = Project.all
  end

  def show
    # list more items of same category
    # @items = Item.all.where("id = ?", @item.id)
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :subtitle, :info, :picture, :body, :size)
  end
end
