
class Cohort
  attr_reader :title, :start_date, :end_date, :students, :system_checks, :postgrad_kickoff

  def initialize (title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
    @postgrad_kickoff = @end_date + 4
  end

  def enroll (student)
    if !@students.include?(student)
      @students << student
    end
  end

  def assign (system_check)
    @system_checks << system_check
  end

  def roster
    output = "Cohort: #{@title}\n--------------------\n"
    @students.each do |student|
      output << "#{student.name} #{student.email}\n"
    end
    output
  end

  def system_check_completed? (system_check)
    all_graded = true
    # @system_checks.each do |system_check|
      system_check.submissions.each do |submission|
        if submission.graded?
          all_graded = false
        end
      end
    # end
    all_graded
  end

end
