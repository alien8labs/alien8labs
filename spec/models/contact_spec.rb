require 'spec_helper'

describe Contact do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:company) }
  it { should validate_presence_of(:phone_number) }
  it { should validate_presence_of(:want_to_accomplish) }
  it { should validate_presence_of(:help_you_succeed) }
end
