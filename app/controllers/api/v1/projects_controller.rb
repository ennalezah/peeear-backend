class Api::V1::ProjectsController < ApplicationController

  def index
    projects = Project.all
    render json: ProjectSerializer.new(projects).to_serialized_json, status: :accepted
  end

  def show
    project = Project.find_by(id: params[:id])

    if project
      render json: ProjectSerializer.new(project).to_serialized_json, status: :accepted
    else
      render json: "Project not found. Check project ID and try again.", status: :not_found
    end
  end

  def create
    project = Project.new(project_params)

    if project.save
      render json: ProjectSerializer.new(project).to_serialized_json, status: :accepted
    else
      render json: { error: "There was a problem creating the project." }, status: :bad_request
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :difficulty, :first_name, :last_name, :email)
  end
end