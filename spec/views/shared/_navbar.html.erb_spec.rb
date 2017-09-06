require 'rails_helper'

describe "shared/_navbar.html.erb" do
  before { sign_in user }

  context "without profile" do
    let(:user) { create :user, email: 'woot@codaisseur.com' }

    it "renders email" do
      render
      expect(rendered).to have_content('woot@codaisseur.com')
    end
  end

  context "with profile" do
    let(:profile) { build :profile, first_name: 'Faisal', last_name: 'Al-sudani' }
    let(:user) { create :user, profile: profile }

    it "renders first name and last name" do
      render
      expect(rendered).to have_content('Faisal Al-sudani')
    end
  end
end
