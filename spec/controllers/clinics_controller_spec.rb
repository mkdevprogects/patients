require 'rails_helper'

RSpec.describe ClinicsController, type: :controller do
  let(:patient) { create(:patient) }

  describe "GET #index" do
    it "returns http success" do
      sign_in patient
      get :index
      expect(response).to have_http_status(:success)
    end

    it "renders the index template" do
      sign_in patient
      get :index
      expect(response).to render_template("index")
    end

    let(:clinic_1) { create(:clinic) }
    let(:clinic_2) { create(:clinic) }

    it "loads all of the clinics into @clinics" do
      sign_in patient
      get :index
      expect(assigns(:clinics)).to match_array([clinic_1, clinic_2])
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
