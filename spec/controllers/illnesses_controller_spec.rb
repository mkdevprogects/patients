require 'rails_helper'

RSpec.describe IllnessesController, type: :controller do
  let(:patient) { create(:patient) }
  let(:illness) { create(:illness, patient_id: 1) }

  describe "GET #index" do
    let(:illness_2) { create(:illness, patient_id: 1) }

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

    it "loads all illnesses" do
      sign_in patient
      get :index
      expect(assigns(:illnesses)).to match_array([illness, illness_2])
    end
  end

  describe "GET #show" do
    it "returns http success" do
      sign_in patient
      get :show, { id: illness.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the show template" do
      sign_in patient
      get :show, { id: illness.id}
      expect(response).to render_template("show")
    end

    it "load illness" do
      sign_in patient
      get :show, { id: illness.id}
      expect(assigns(:illness)).to eq(illness)
    end
  end
end
