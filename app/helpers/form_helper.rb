module FormHelper
  def setup_teacher(teacher)
    teacher.user ||= User.new
    teacher
  end

  def setup_artist(artist)
    artist.user ||= User.new
    artist
  end
end
