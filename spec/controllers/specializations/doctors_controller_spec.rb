require 'rails_helper'

RSpec.describe Specializations::DoctorsController, type: :controller do
  render_views

  let(:patient) { create(:patient) }
  let!(:specialization) { create(:specialization) }

  context 'signed in' do
    before { sign_in patient }

    describe "GET #index" do
      let!(:doctor_1) { create(:doctor) }
      let!(:doctor_2) { create(:doctor) }

      before do
        doctor_1.specializations << specialization
        doctor_2.specializations << specialization
        get :index, specialization_id: specialization.id
      end

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the specializations/doctors/index template" do
        expect(response).to render_template("specializations/doctors/index")
      end

      it "loads all doctors" do
        expect(assigns(:doctors)).to match_array([doctor_1, doctor_2])
      end

      it "page have doctors names" do
        expect(response.body).to include("#{doctor_1.name}","#{doctor_2.name}")
      end
    end
  end

  context 'guest' do
    describe "GET #index" do
      it "returns http 302" do
        get :index, specialization_id: specialization.id
        expect(response).to have_http_status(302)
      end
    end
  end
end
