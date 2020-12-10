
Given('the login herokuapp page is opended successfully') do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get('http://the-internet.herokuapp.com/login')
  @driver.manage.window.resize_to(1552, 801)
end

When('user insert {string} and {string}') do |string, string2|
  @driver.find_element(:id, 'username').click
  @driver.find_element(:id, 'username').send_keys(string)
  @driver.find_element(:id, 'password').click
  @driver.find_element(:id, 'password').send_keys(string2)
end

Then('the direct page will show proper {string}') do |string|
  @driver.find_element(:css, '.radius').click
  @driver.find_element(:id, 'flash').click
  expect(@driver.find_element(:id, 'flash').text).to eq(string)
end
