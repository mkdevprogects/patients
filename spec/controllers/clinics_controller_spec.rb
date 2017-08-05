require 'rails_helper'

RSpec.describe ClinicsController, type: :controller do
  let(:patient) { create(:patient) }

  describe "GET #index" do
    it "returns http success" do
      sign_in patient
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:clinic) { create(:clinic) }
    
    it "returns http success" do
      sign_in patient
      get :show, { id: clinic.id}
      expect(response).to have_http_status(:success)
    end
  end
end
