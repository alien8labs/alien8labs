require 'acceptance/acceptance_helper'


feature "a visitor submits the contact form" do

  scenario "successfully" do
    submit_contact_form

    should_set_a_flash_message(:notice)
    current_path.should eq(root_path)
  end


  scenario "with an invalid email" do
    submit_contact_form(:email => 'invalid')
    page.should have_content('Email is invalid')
  end


  scenario "with an missing email" do
    submit_contact_form(:email => '')
    page.should have_content('Email is required')
  end


  scenario "with an missing name" do
    submit_contact_form(:name => '')
    page.should have_content('Name is required')
  end


  scenario "with a mising company" do
    submit_contact_form(:company => '')
    page.should have_content('Company is required')
  end


  scenario "with a missing phone number" do
    submit_contact_form(:phone_number => '')
    page.should have_content('Phone Number is required')
  end


  scenario "with a missing want to accomplish" do
    submit_contact_form(:want_to_accomplish => '')
    page.should have_content('Please tell us what you aim to accomplish')
  end


  scenario "with a missing how we can help" do
    submit_contact_form(:help_you_succeed => '')
    page.should have_content('Please tell us how we can help')
  end
end
