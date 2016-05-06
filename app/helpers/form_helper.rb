module FormHelper
  def setup_teacher(teacher)
    teacher.user ||= User.new
    teacher
  end
end
