require 'spec_helper'
require 'net/http'
require 'fakeweb'

describe Project do
  describe ".update_from_cucumber" do

    before do
      subject.stub(:source_url).and_return "http://chronos-pm.heroku.com/cucumber.json"
      FakeWeb.register_uri(:get, subject.source_url, :body => File.open("#{Rails.root}/spec/fixtures/cucumber.json").read)
    end

    it "should call UserStory.create_from_sentence once" do
      UserStory.should_receive(:create_from_cucumber).exactly(4).times
      subject.update_from_cucumber
    end

  end
end
