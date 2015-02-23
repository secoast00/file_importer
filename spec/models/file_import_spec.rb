require 'rails_helper'


describe FileImport do
  it 'should be valid' do
    file_import = build(:file_import)
    expect(file_import).to be_valid
  end

#   describe "#parse" do
#     it "should return valid data" do
#       importer = FileImport.new
#       expect(importer.parse(data)).to eq(expected)
#     end
#   end
# end

