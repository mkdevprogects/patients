require 'rails_helper'

RSpec.describe IllnessesController, type: :controller do
  let(:patient) { create(:patient) }
  let(:illness) { create(:illness, patient_id: 1) }

  context 'signed in' do
    before { sign_in patient }

    describe "GET #index" do
      let(:illness_2) { create(:illness, patient_id: 1) }

      before { get :index }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the index template" do
        expect(response).to render_template("index")
      end

      it "loads all illnesses" do
        expect(assigns(:illnesses)).to match_array([illness, illness_2])
      end
    end

    describe "GET #show" do
      before { get :show, { id: illness.id} }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the show template" do
        expect(response).to render_template("show")
      end

      it "load illness" do
        expect(assigns(:illness)).to eq(illness)
      end
    end
  end
end
