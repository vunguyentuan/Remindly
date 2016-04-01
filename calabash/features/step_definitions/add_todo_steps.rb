Given(/^I\'m on add todo page$/) do
  touch "* id:'add_reminder'"
end

Then(/^I see "([^"]*)" edit text$/) do |message|
  wait_for(timeout: 15, timeout_message: "Element with text '#{message}' not exists") do
    element_exists("* {text: CONTAINS '#{message}'}")
  end
end
