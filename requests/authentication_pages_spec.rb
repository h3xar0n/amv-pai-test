require 'spec_helper'

describe "Authentication" do

  describe "signin" do
    before { visit signin_path }

    describe "with invalid entry" do
      before { click_button "Sign in" }

      it { should have_selector('title', text: 'Sign in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
    end

    # Setup FactoryGirl gem
    describe "with valid entry" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end

      # These path name may be different depending on how you have set up
      # your route file
      it { should have_link('Logout', href: signout_path) }
      it { should_not have_link('Sign in', href: signin_path) }

      describe "followed by signout" do
        before { click_link "Logout" }
        it { should have_link('Log in') }
      end
    end
  end
end
