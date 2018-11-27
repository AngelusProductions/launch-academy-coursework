require_relative 'lesson'

class SystemCheck < Lesson
  attr_reader :name, :due_date, :submissions, :system

  def initialize (name, due_date)
    @name = name
    @due_date = due_date
    @submissions = []
  end

  def add_submission (submission)
    @submissions << submission
    return @submissions
  end

  def average_grade
    total = 0.0
    @submissions.each do |submission|
      total += submission.grade
    end
    total / @submissions.length
  end

  def did_student_complete_system_check? (student)
    submitted = false
    @submissions.each do |submission|
      if submission.student == student
        submitted = true
      end

    end
    submitted
  end

end
