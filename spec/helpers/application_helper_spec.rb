require 'spec_helper'


describe ApplicationHelper do
  describe "#navigation_link" do

    let(:link) { helper.navigation_link('text', 'controller', 'url') }


    it "should create a the expected link" do
      link.should eq('<li><a href="url">text</a></li>')
    end
    

    context "when the current page" do
      before { controller.stub!(:controller_name).and_return('controller') }

      it "should not set the li class to current" do
        link.should include('class="current"')
      end
    end


    context "when not the current page" do
      before { controller.stub!(:controller_name).and_return('') }

      it "should not set the li class to current" do
        link.should_not include('class="current"')
      end
    end
  end
end
