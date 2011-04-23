Factory.define(:contact) do |c|
  c.name               { Faker::Name.name }
  c.email              { Faker::Internet.email }
  c.company            { Faker::Company.name }
  c.phone_number       { Faker::PhoneNumber.phone_number }
  c.want_to_accomplish { Populator.paragraphs(1..2) }
  c.help_you_succeed   { Populator.paragraphs(1..2) }
end
