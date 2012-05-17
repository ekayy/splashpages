require 'spec_helper'

describe "Profile Pages" do

	subject { page }

  describe "customize" do

  	before { visit new_user_profiles_path }

  	let(:submit) { "Customize" }

  	describe "with invalid information" do
      it "should not create a profile" do
        expect { click_button submit }.not_to change(Profile, :count)
      end
    end

  	describe "with valid information" do
      before do
        fill_in "Title",        with: "Test"
        fill_in "Content",     with: "Test"
      end

      it "should create a profile" do
        expect { click_button submit }.to change(Profile, :count).by(1)
      end
    end
  end
end
