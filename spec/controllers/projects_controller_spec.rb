require 'spec_helper'

describe ProjectsController do

  describe "GET 'show'" do
    let(:project) { mock_model(Project) }
    subject { controller }
    before do
      Project.stub(:find).with(1).and_return(project)
      get 'show', :id => 1
    end
    it { should assign_to(:project).with(project) }
  end

  describe "PUT 'refresh'" do
    let(:project) { mock_model(Project) }
    subject { controller }
    before do
      Project.stub(:find).with(1).and_return(project)
      project.should_receive(:update_from_cucumber)
      put 'refresh', :id => 1
    end
    it { should redirect_to(project_path(project)) }
  end

end
