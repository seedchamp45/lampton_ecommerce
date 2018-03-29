require 'spec_helper'

describe Spree::PermissionSets::TrackerDisplay do
  let(:ability) { Spree::Ability.new nil }

  subject { ability }

  context "when activated" do
    before do
      described_class.new(ability).activate!
    end

    it { is_expected.to be_able_to(:display, Spree::Tracker) }
    it { is_expected.to be_able_to(:admin, Spree::Tracker) }
  end

  context "when not activated" do
    it { is_expected.not_to be_able_to(:display, Spree::Tracker) }
    it { is_expected.not_to be_able_to(:admin, Spree::Tracker) }
  end
end
