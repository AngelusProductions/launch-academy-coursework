require "spec_helper"

describe Article do
  describe ".new" do
    it "initiates the article object" do
      article = Article.new("Trumpster Fire")
      expect(article).to be_a(Article)
    end
  end

  let(:article) { Article.new("ES6 Tricks") }

  describe "#title" do
    it "has an attribute reader for title" do
      expect(article.title).to eq("ES6 Tricks")
    end

    it "does not have an attribute writer for title" do
      expect { article.title = "ES5 Tricks" }.to raise_error(NoMethodError)
    end
  end
end
