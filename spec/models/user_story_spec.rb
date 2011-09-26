require 'spec_helper'

describe UserStory do
  describe "#create_from_cucumber" do
    context "when the sentence follow the pattern In order to... As a... I want to..." do
      let(:feature_json) { JSON.parse(File.open("#{Rails.root}/spec/fixtures/cucumber.json").read).fetch("features")[0] }
      subject { UserStory.create_from_cucumber feature_json }
      its(:benefit) { should be_== "start manage a project" }
      its(:role) { should be_== "project manager" }
      its(:feature) { should be_== "create a kicking ass project" }
    end
  end
end

