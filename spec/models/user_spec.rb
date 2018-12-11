require 'rails_helper'

RSpec.describe User, type: :model do

  context "Includes" do
    it { is_expected.to be_mongoid_document }
    it { is_expected.to have_timestamps }
  end

  context "Fields" do
    it { is_expected.to have_field(:locker_locked_at).of_type(Time) }
    it { is_expected.to have_field(:locker_locked_until).of_type(Time) }
    it { is_expected.to have_field(:email).of_type(String).with_default_value_of("") }
    it { is_expected.to have_field(:encrypted_password).of_type(String).with_default_value_of("") }
    it { is_expected.to have_field(:reset_password_token).of_type(String) }
    it { is_expected.to have_field(:reset_password_sent_at).of_type(Time) }
    it { is_expected.to have_field(:reset_password_redirect_url).of_type(String) }
    it { is_expected.to have_field(:remember_created_at).of_type(Time) }
    it { is_expected.to have_field(:sign_in_count).of_type(Integer).with_default_value_of(0) }
    it { is_expected.to have_field(:current_sign_in_at).of_type(Time) }
    it { is_expected.to have_field(:last_sign_in_at).of_type(Time) }
    it { is_expected.to have_field(:current_sign_in_ip).of_type(String) }
    it { is_expected.to have_field(:last_sign_in_ip).of_type(String) }
    it { is_expected.to have_field(:confirmation_token).of_type(String  ) }
    it { is_expected.to have_field(:confirmed_at).of_type(Time) }
    it { is_expected.to have_field(:confirmation_sent_at).of_type(Time) }
    it { is_expected.to have_field(:unconfirmed_email).of_type(String) }
    it { is_expected.to have_field(:provider).of_type(String) }
    it { is_expected.to have_field(:uid).of_type(String).with_default_value_of("") }
    it { is_expected.to have_field(:unconfirmed_email).of_type(String) }
  end

  context "Indexs" do
    it { is_expected.to have_index_for(email: 1).with_options(unique: true, background: true) }
    it { is_expected.to have_index_for(reset_password_token: 1).with_options(unique: true, background: true) }
    it { is_expected.to have_index_for(confirmation_token: 1).with_options(unique: true, background: true) }
    it { is_expected.to have_index_for(uid: 1, provider: 1).with_options(unique: true, background: true) }
  end
end
