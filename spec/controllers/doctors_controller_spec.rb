require 'rails_helper'

RSpec.describe DoctorsController, type: :controller do
  let(:patient) { create(:patient) }

  describe "GET #index" do
    let(:doctor_1) {create(:doctor)}
    let(:doctor_2) {create(:doctor)}

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

    it "loads all doctors" do
      sign_in patient
      get :index
      expect(assigns(:doctors)).to match_array([doctor_1, doctor_2])
    end
  end

  describe "GET #show" do
    let(:doctor) { create(:doctor) }

    it "returns http success" do
      sign_in patient
      get :show, { id: doctor.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the show template" do
      sign_in patient
      get :show, { id: doctor.id}
      expect(response).to render_template("show")
    end

    it "load doctor" do
      sign_in patient
      get :show, { id: doctor.id}
      expect(assigns(:doctor)).to eq(doctor)
    end
  end
end
