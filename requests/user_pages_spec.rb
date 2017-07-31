require 'spec_helper'

describe "User pages" do

  describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid entry" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid entry" do
      before do
        fill_in "Name",         with: "Darth Vader"
        fill_in "Email",        with: "vader@empire.gov"
        fill_in "Password",     with: "$ithLord66"
        fill_in "Confirmation", with: "$ithLord66"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
  end
end
