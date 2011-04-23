require 'spec_helper'

describe ContactsController do
  describe "#new" do
    before { get :new }

    it { should assign_to(:contact).with_kind_of(Contact) }
    it { should render_template("new") }
    it { should respond_with(:success) }
  end


  describe "#contact" do
    let!(:contact) { Contact.new }
    before         { Contact.stub!(:new).and_return(contact) }


    def do_post
      post :create, :contact => 'attributes'
    end


    it "should instantiate a new record with params" do
      Contact.should_receive(:new).with('attributes')
      do_post
    end


    context "when the record successfully saves" do
      before do
        contact.stub!(:save).and_return(true)
        do_post
      end


      it { should set_the_flash }
      it { should redirect_to(root_path) }
    end


    context "when the record fails to save" do
      before do
        contact.stub!(:save).and_return(false)
        do_post
      end

      
      it { should_not set_the_flash }
      it { should render_template("new") }
    end
  end
end
