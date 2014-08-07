require 'rspec'
require 'account'

RSpec.configure do |config|
  config.before(:each) do
    Account.clear
  end
end

describe 'Account' do
  it 'initializes with a hash' do
    new_account = Account.new({:owner=>'Jim',:balance=>400})
    expect(new_account).to be_an_instance_of Account
  end
  
  it 'reads back the owner name' do
    new_account = Account.new({:owner=>'Jim',:balance=>400})
    expect(new_account.owner).to eq 'Jim'
  end
  
  it 'reads back the account balance' do
    new_account = Account.new({:owner=>'Jim',:balance=>400})
    expect(new_account.balance).to eq 400
  end
  
  describe '.all' do
    it 'starts as an empty array' do
      expect(Account.all).to eq []
    end
  end
end