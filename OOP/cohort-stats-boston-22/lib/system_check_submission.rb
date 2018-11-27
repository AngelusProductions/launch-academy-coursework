
class SystemCheckSubmission
  attr_reader :solution, :student
  attr_accessor :grade

  def initialize (solution, student)
    @solution = solution
    @student = student
    @grade = nil
  end

  def assign_grade (grade)
    @grade = grade
  end

  def graded?
    !@grade.nil?
  end

end
