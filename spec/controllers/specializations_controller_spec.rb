require 'rails_helper'

RSpec.describe SpecializationsController, type: :controller do
  let(:patient) { create(:patient) }

  describe "GET #index" do
    it "returns http success" do
      sign_in patient
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
