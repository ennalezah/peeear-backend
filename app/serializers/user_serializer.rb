class UserSerializer
  def initialize(user_object)
    @user = user_object
  end

  def to_serialized_json
    options = {
      # include: { 
      #   owned_projects: {
      #     only: [:title, :description, :difficulty]
      #   } 
      # },
      except: [:created_at, :updated_at]
    }

    @user.to_json(options)
  end
end