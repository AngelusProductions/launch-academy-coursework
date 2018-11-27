require "spec_helper"

describe Lesson do
  describe ".new" do
    it "initiates the lesson object" do
      lesson = Lesson.new("Rspec", "This is how Rspec works")
      expect(lesson).to be_a(Lesson)
    end
  end

  let(:lesson) { Lesson.new("OOP", "This is how OOP works") }

  describe "#name" do
    it "has an attribute reader for name" do
      expect(lesson.name).to eq("OOP")
    end

    it "does not have an attribute writer for name" do
      expect { lesson.name = "Inheritance" }.to raise_error(NoMethodError)
    end
  end

  describe "#submittable?" do
    it "return true if challenge or system check" do
      challenge = Challenge.new ("Variables")
      system_check = SystemCheck.new("Grocery List with Fetch", "2020/08/21")
      expect(lesson.submittable?(challenge)).to eq(true)
      expect(lesson.submittable?(system_check)).to eq(true)
    end
  end

end
