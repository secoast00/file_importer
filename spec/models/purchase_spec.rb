require 'rails_helper'

RSpec.describe Purchase, :type => :model do
  it 'should be valid' do
    purchase = build(:purchase)
    expect(purchase).to be_valid
  end
end
