require 'spec_helper'

RSpec.describe Spree::Tracker, type: :model do
  let(:store) { create(:store) }
  let!(:tracker) { create(:tracker, store: store) }
  let(:other_store) { create(:store, code: 'STORE2', url: 'realfakedoors.com') }
  let!(:other_tracker) { create(:tracker, store: other_store) }

  describe "current" do
    it "returns nil if no store passed in argument" do
      expect(Spree::Tracker.current).to eq(nil)
    end

    it "returns the first active tracker" do
      expect(Spree::Tracker.current(store)).to eq(tracker)
    end

    it "does not return an inactive tracker" do
      tracker.update_attribute(:active, false)
      expect(Spree::Tracker.current(store)).to be_nil
    end

    it "finds tracker by store" do
      expect(Spree::Tracker.current(store)).to eq tracker
    end

    it "finds tracker based on store code" do
      aggregate_failures do
        expect(ActiveSupport::Deprecation).to receive(:warn)
        expect(Spree::Tracker.current('STORE2')).to eq other_tracker
      end
    end

    it "finds tracker based on store url" do
      aggregate_failures do
        expect(ActiveSupport::Deprecation).to receive(:warn)
        expect(Spree::Tracker.current(store.url)).to eq tracker
      end
    end
  end
end
