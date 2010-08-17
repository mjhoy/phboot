When /^I run phboot with "([^"]*)"$/ do |args|
  When %{I run "#{$PHBOOT_BIN} #{args}"}
end
