require 'rails_helper'

RSpec.describe Item, :type => :model do
  it 'should be valid' do
    item = build(:item)
    expect(item).to be_valid
  end
end
