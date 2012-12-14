require 'spec_helper'

describe Category do
	it 'has a valid factory' do
		build(:category).should be_valid
	end

  context 'with valid attributes' do
  	let(:category) { create(:category) }

  	it 'has a name' do
  		category.name.should_not be_nil
  	end
  end

  context 'is invalid' do
  	it 'without name' do
  		subject { build(:category, name: nil) }

  		subject.should_not be_valid
  	end
  end
end
