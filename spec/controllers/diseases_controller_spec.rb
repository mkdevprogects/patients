require 'rails_helper'

RSpec.describe DiseasesController, type: :controller do
  let(:patient) { create(:patient) }

  describe "GET #index" do
    it "returns http success" do
      sign_in patient
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:disease) { create(:disease) }

    it "returns http success" do
      sign_in patient
      get :show, { id: disease.id}
      expect(response).to have_http_status(:success)
    end
  end
end
