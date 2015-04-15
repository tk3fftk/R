require 'spec_helper'
=begin
describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
end
=end

describe "StaticPages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  subject { page }

  describe "Home page" do
    before {visit root_path}

    it {should have_content('Sample App')}
#    it "should have the content 'Sample App'" do
#      visit root_path
#      expect(page).to have_content('Sample App')
#    end
    it {should have_title(full_title(''))}
#    it "should have the base title" do
#      visit root_path
#      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
#    end
    it {should_not have_title('|Home')}
#    it "should not have a custom page title" do
#      visit root_path
#      expect(page).not_to have_title("| Home")
#    end
  end

describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end

  end


describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("#{base_title} | About Us")
    end
  end


describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
    it "should have the title 'Contact'" do
      visit contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end


  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now"
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app"
    expect(page).to have_title(full_title(''))
  end

end
