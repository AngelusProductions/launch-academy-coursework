require "spec_helper"

describe Video do
  describe ".new" do
    it "initiates the video object" do
      video = Video.new("Cats", "www.youtube.com")
      expect(video).to be_a(Video)
    end
  end

  let(:video) { Video.new("Cats", "www.youtube.com") }

  describe "#url" do
    it "has an attribute reader for url" do
      expect(video.url).to eq("www.youtube.com")
    end

    it "does not have an attribute writer for url" do
      expect { video.url = "www.youboob.com" }.to raise_error(NoMethodError)
    end
  end
end
