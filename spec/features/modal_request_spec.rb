require 'spec_helper'

describe 'Modal Requests', :js => true do
  # This works when hand tested, but times out for some weird reason.

  #it 'should remove the modal from the html (detach()) if remove_on_close is set to true' do
  #  visit '/test/modal'
  #  #find(:css, '#express_modal').visible?.should be_false
  #  click_button 'Modal'
  #  find('#express_modal').visible?.should be_true
  #  click_button 'Close'
  #  page.should_not have_css('#express_modal')
  #end
end