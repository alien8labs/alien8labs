require 'spec_helper'

describe Contact do
  it { should validate_presence_of(:name).with_message('Name is required') }
  it { should validate_presence_of(:email).with_message('Email is required') }
  it { should validate_presence_of(:company).with_message('Company is required') }
  it { should validate_presence_of(:phone_number).with_message('Phone Number is required') }
  it { should validate_presence_of(:want_to_accomplish).with_message('Please tell us what you aim to accomplish') }
  it { should validate_presence_of(:help_you_succeed).with_message('Please tell us how we can help') }


  it { should allow_value('valid@email.com').for(:email) }
  it { should_not allow_value('invalid').for(:email) }


  describe "#after_create" do
    after { Factory(:contact) }

    it "should send a contact request email" do
      message = double('message').as_null_object
      message.should_receive(:deliver)
      Mailer.stub(:contact_request) { message }
    end
  end
end
