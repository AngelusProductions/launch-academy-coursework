
class Lesson
  attr_reader :name, :body

  def initialize (name, body)
    @name = name
    @body = body
  end

  def submittable? (lesson)
    submittable = false
    if lesson.is_a?(Challenge) || lesson.is_a?(SystemCheck)
      submittable = true
    end
    submittable
  end

end
