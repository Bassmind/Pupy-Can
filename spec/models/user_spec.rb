require 'spec_helper'

describe User do
  it 'has a valid factory' do
  	create(:user).should be_valid
  end

  it 'only allows one user in the database' do
  	create(:user)
  	build(:user).should_not be_valid
  end

  it 'is invalid without name' do
  	build(:user, name: nil).should_not be_valid
  end

  it 'is invalid without phone' do
  	build(:user, phone: nil).should_not be_valid
  end

  it 'is invalid without email' do
  	build(:user, email: nil).should_not be_valid
  end
end
