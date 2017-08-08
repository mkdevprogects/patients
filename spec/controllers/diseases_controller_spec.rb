require 'rails_helper'

RSpec.describe DiseasesController, type: :controller do
  let(:patient) { create(:patient) }

  describe "GET #index" do
    let(:disease_1) { create(:disease, icd_code: 'A00-A00') }
    let(:disease_2) { create(:disease, icd_code: 'B01-B01') }

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

    it "loads all diseases" do
      sign_in patient
      get :index
      expect(assigns(:diseases)).to match_array([disease_1, disease_2])
    end
  end

  describe "GET #show" do
    let(:disease) { create(:disease) }

    it "returns http success" do
      sign_in patient
      get :show, { id: disease.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the show template" do
      sign_in patient
      get :show, { id: disease.id}
      expect(response).to render_template("show")
    end

    it "load disease" do
      sign_in patient
      get :show, { id: disease.id}
      expect(assigns(:disease)).to eq(disease)
    end
  end
end
