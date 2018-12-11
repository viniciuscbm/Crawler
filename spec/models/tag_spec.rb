require 'rails_helper'

RSpec.describe Tag, type: :model do
  
  context "Includes" do
    it { is_expected.to be_mongoid_document }
  end

  context "Fields" do
    it { is_expected.to have_field(:name).of_type(String) }
  end

  context "Validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
