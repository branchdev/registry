module TeachersHelper
  def setup_user(user)
    user.address ||= Address.new
    user
  end
end
