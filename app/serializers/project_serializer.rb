class ProjectSerializer
  def initialize(project_object)
    @project = project_object
  end

  def to_serialized_json
    options = {
      include: { 
        comments: {
          only: [:input, :user_id]
        } 
      },
      except: [:created_at, :updated_at]
    }

    @project.to_json(options)
  end
end