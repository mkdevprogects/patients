require 'rails_helper'

RSpec.describe DoctorsController, type: :controller do
  let(:patient) { create(:patient) }

  context 'signed in' do
    before { sign_in patient }

    describe "GET #index" do
      let(:doctor_1) {create(:doctor)}
      let(:doctor_2) {create(:doctor)}

      before { get :index }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the index template" do
        expect(response).to render_template("index")
      end

      it "loads all doctors" do
        expect(assigns(:doctors)).to match_array([doctor_1, doctor_2])
      end
    end

    describe "GET #show" do
      let(:doctor) { create(:doctor) }

      before { get :show, { id: doctor.id} }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the show template" do
        expect(response).to render_template("show")
      end

      it "load doctor" do
        expect(assigns(:doctor)).to eq(doctor)
      end
    end
  end
end
