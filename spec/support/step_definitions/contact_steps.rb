def submit_contact_form(attributes = {})
  visit new_contact_path

  fill_in 'Name',                               :with => attributes[:name]               || 'Name'
  fill_in 'Email',                              :with => attributes[:email]              || 'alf@alien8labs.com'
  fill_in 'Company',                            :with => attributes[:company]            || 'Company'
  fill_in 'Phone Number',                       :with => attributes[:phone_number]       || 'Phone Number'
  fill_in 'What would you like to accomplish?', :with => attributes[:want_to_accomplish] || 'Rule the World'
  fill_in 'How can we help you succeed?',       :with => attributes[:help_you_succeed]   || '1 million dolloars'

  click_button 'Submit Request'
end
