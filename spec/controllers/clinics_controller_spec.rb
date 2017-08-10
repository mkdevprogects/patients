require 'rails_helper'

RSpec.describe ClinicsController, type: :controller do
  render_views
  let(:patient) { create(:patient) }

  context 'signed in' do
    before { sign_in patient }

    describe "GET #index" do
      let!(:clinic_1) { create(:clinic) }
      let!(:clinic_2) { create(:clinic) }

      before { get :index }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the index template" do
        expect(response).to render_template("index")
      end

      it "loads all clinics" do
        expect(assigns(:clinics)).to match_array([clinic_1, clinic_2])
      end

      it "page have clinics title" do
        expect(response.body).to include("#{clinic_1.title}","#{clinic_2.title}")
      end
    end

    describe "GET #show" do
      let(:clinic) { create(:clinic) }

      before { get :show, { id: clinic.id} }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the show template" do
        expect(response).to render_template("show")
      end

      it "load clinic" do
        expect(assigns(:clinic)).to eq(clinic)
      end

      it "page have clinics title" do
        expect(response.body).to include("#{clinic.title}")
      end
    end
  end

  context 'guest' do

    describe "GET #index" do
      let!(:clinic_1) { create(:clinic) }
      let!(:clinic_2) { create(:clinic) }

      before { get :index }

      it "returns http success" do
        expect(response).to have_http_status(302)
      end

      it "not loads all clinics" do
        expect(assigns(:clinics)).not_to match_array([clinic_1, clinic_2])
      end

      it "page does not have clinics title" do
        expect(response.body).not_to include("#{clinic_1.title}","#{clinic_2.title}")
      end
    end

    describe "GET #show" do
      let(:clinic) { create(:clinic) }

      before { get :show, { id: clinic.id} }

      it "returns http 302" do
        expect(response).to have_http_status(302)
      end

      it "not load clinic" do
        expect(assigns(:clinic)).not_to eq(clinic)
      end

      it "page does not have clinics title" do
        expect(response.body).not_to include("#{clinic.title}")
      end
    end
  end
end

