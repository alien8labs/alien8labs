require "spec_helper"

describe Mailer do
  describe "#contact_request" do
    let(:contact) { Factory(:contact) }

    subject { Mailer.contact_request(contact) }

    it { should deliver_to('mothership@alien8labs.com') }
    it { should have_subject('Hire Us Request') }
    it { should deliver_from(contact.email) }
  end
end
