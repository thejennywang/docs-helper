require 'docs_helper'

describe 'Docs Helper' do
  context 'adds backerkats to list' do

    it 'starts with no backerkats' do
      expect(backerkats.empty?).to be true
    end

    it 'creates a backerkat' do
      name = "Jenny"
      email = "jenny@backerkit.com"
      
      expect(create_backerkat(name, email)).to eq ({name: "Jenny", email: "jenny@backerkit.com"})
    end

    it 'adds backerkats' do
      Jenny = create_backerkat("Jenny", "jenny@backerkit.com")
      add_backerkat(Jenny)
      
      expect(backerkats).to eq [{name: "Jenny", email: "jenny@backerkit.com"}]
    end

    it 'removes a backerkat from list' do
      add_backerkat(Jenny)
      expect(backerkats).to eq [{name: "Jenny", email: "jenny@backerkit.com"}]
      remove_backerkat("jenny@backerkit.com")
      
      expect(backerkats).to eq []
    end
  end 
end