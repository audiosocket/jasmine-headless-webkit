Then /^the template should use the "([^"]*)" reporter to "([^"]*)"$/ do |reporter, target|
  output = @template_writer.render

  output.should include(%{jasmine.#{reporter}("#{target}")})
end

