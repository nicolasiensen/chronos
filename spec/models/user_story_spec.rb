require 'spec_helper'

describe UserStory do
  describe "#create_from_sentence" do

    context "when the sentence follow the pattern As a... I want... So that..." do
      let(:sentence) { "As a project manager\nI want to view my project user stories\nSo that I can keep track all of them" }
      subject { UserStory.create_from_sentence sentence }
      its(:role) { should be_== "project manager" }
      its(:feature) { should be_== "view my project user stories" }
      its(:benefit) { should be_== "I can keep track all of them" }
    end

  end
end

