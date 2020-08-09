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
end