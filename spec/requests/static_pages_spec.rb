require 'spec_helper'

describe "Static pages" do
  
  subject { page }
  
  shared_examples_for "all static pages" do
     it { should have_selector('h1',    text: heading) }
     it { should have_selector('title', text: full_title(page_title)) }
   end

  describe "Home page" do
    before { visit root_path }
      # let(:heading)    { 'Sample App' }
      # let(:page_title) { '' }

      # it_should_behave_like "all static pages"
      # it { should_not have_selector 'title', text: '| Home' }
    
    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit root_path }
      let(:heading)    { 'Sample App' }
      let(:page_title) { '' }

      it_should_behave_like "all static pages"
    end

  describe "About page" do
    before { visit root_path }
      let(:heading)    { 'Sample App' }
      let(:page_title) { '' }

      it_should_behave_like "all static pages"
    end

  describe "Contact page" do
    
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    # before { visit root_path }
      # let(:heading)    { 'Sample App' }
      # let(:page_title) { '' }

      # it_should_behave_like "all static pages"
    end
    
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
    
  # it "should have the right links on the layout" do
      # visit root_path
      # click_link "About"
      # page.should have_selector 'title', text: full_title('About Us')
      # click_link "Help"
      # page.should have_selector 'title', text: full_title('Help')
      # click_link "Contact"
      # page.should have_selector 'title', text: full_title('Contact')
      # click_link "Home"
      # click_link "Sign up now!"
      # page.should have_selector 'title', text: full_title('')
      # click_link "sample app"
      # page.should have_selector 'title', text: full_title('Sample App')
  # end
  end  
end