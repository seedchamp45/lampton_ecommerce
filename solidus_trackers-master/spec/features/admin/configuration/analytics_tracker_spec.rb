require 'spec_helper'

describe "Analytics Tracker", type: :feature do
  stub_authorization!
  let!(:store) { create(:store) }

  context "index" do
    before(:each) do
      2.times { create(:tracker, store: store) }
      visit spree.admin_path
      click_link "Settings"
      click_link "Analytics Tracker"
    end

    it "should have the right content" do
      expect(page).to have_content("Analytics Trackers")
    end

    it "should have the right tabular values displayed" do
      within_row(1) do
        expect(column_text(1)).to eq("A100")
        expect(column_text(2)).to eq("Yes")
      end

      within_row(2) do
        expect(column_text(1)).to eq("A100")
        expect(column_text(2)).to eq("Yes")
      end
    end
  end

  context "create" do
    before(:each) do
      visit spree.admin_path
      click_link "Settings"
      click_link "Analytics Tracker"
    end

    it "should be able to create a new analytics tracker" do
      click_link "admin_new_tracker_link"
      fill_in "tracker_analytics_id", with: "A100"
      option = first("#tracker_store_id option").text
      select option, from: "tracker_store_id"
      click_button "Create"

      expect(page).to have_content("successfully created!")
      within_row(1) do
        expect(column_text(1)).to eq("A100")
        expect(column_text(2)).to eq("Yes")
      end
    end
  end

  context "store" do
    it "should display the script tag if a tracking id is provided" do
      create(:tracker, store: store)

      visit spree.root_path
      expect(page).to have_css('#solidus_trackers', visible: false)
    end
  end
end
