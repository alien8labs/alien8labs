require 'acceptance/acceptance_helper'


feature "a visitor submits the contact form" do

  scenario "successfully" do
    submit_contact_form

    should_set_a_flash_message(:notice)
    current_path.should eq(root_path)
  end

end
