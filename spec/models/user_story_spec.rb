require 'spec_helper'

describe UserStory do
  describe "#create_from_sentence" do
    context "when the sentence follow the pattern Afim de... Como um... Eu quero..." do
      let(:sentence) { "Afim de manter todas as user stories de um projeto sob controle\nComo um gerente de projetos\nEu quero ver as user stories de um projeto" }
      subject { UserStory.create_from_sentence sentence }
      its(:benefit) { should be_== "manter todas as user stories de um projeto sob controle" }
      its(:role) { should be_== "gerente de projetos" }
      its(:feature) { should be_== "ver as user stories de um projeto" }
    end
  end
end

