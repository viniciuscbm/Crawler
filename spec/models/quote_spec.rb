require 'rails_helper'

RSpec.describe Quote, type: :model do

  context "Includes" do
    it { is_expected.to be_mongoid_document }
  end

  context "Fields" do
    it { is_expected.to have_field(:quote).of_type(String) }
    it { is_expected.to have_field(:author).of_type(String) }
    it { is_expected.to have_field(:author_about).of_type(String) }
    it { is_expected.to have_field(:tags).of_type(Array) }
  end

  context "Validations" do
    it { is_expected.to validate_presence_of(:quote) }
    it { is_expected.to validate_presence_of(:author) }
    it { is_expected.to validate_presence_of(:author_about) }
    it { is_expected.to validate_presence_of(:tags) }
    it { is_expected.to validate_uniqueness_of(:quote) }
  end
end
