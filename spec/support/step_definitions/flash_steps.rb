def should_set_a_flash_message(kind)
  find("div#flash_#{kind}").text.should_not be_nil
end
