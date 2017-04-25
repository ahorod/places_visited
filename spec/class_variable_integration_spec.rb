require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('String#find_and_replace', {:type => :feature}) do
#   it('replaces string with passed parameter') do
#     visit('/')
#     fill_in('First word or phrase to compare:', :with => "Hello")
#     fill_in('Second word or phrase to compare:', :with => "eollh")
#     click_button('Submit')
#     expect(page).to have_content('')
#   end
# end
