class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string      :name,                :null => false
      t.string      :email,               :null => false
      t.string      :company,             :null => false
      t.string      :phone_number,        :null => false
      t.text        :want_to_accomplish,  :null => false
      t.text        :help_you_succeed,    :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
