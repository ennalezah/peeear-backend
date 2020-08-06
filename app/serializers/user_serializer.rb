class UserSerializer
  def initialize(user_object)
    @user = user_object
  end

  def to_serialized_json
    options = {
      except: [:password, :created_at, :updated_at]
    }
  end
end