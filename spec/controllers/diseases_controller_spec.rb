require 'rails_helper'

RSpec.describe DiseasesController, type: :controller do
  let(:patient) { create(:patient) }

  context 'signed in' do
    before { sign_in patient }

    describe "GET #index" do
      let(:disease_1) { create(:disease, icd_code: 'A00-A00') }
      let(:disease_2) { create(:disease, icd_code: 'B01-B01') }

      before { get :index }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the index template" do
        expect(response).to render_template("index")
      end

      it "loads all diseases" do
        expect(assigns(:diseases)).to match_array([disease_1, disease_2])
      end

    end

    describe "GET #show" do
      let(:disease) { create(:disease) }

      before { get :show, { id: disease.id } }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "renders the show template" do
        expect(response).to render_template("show")
      end

      it "load disease" do
        expect(assigns(:disease)).to eq(disease)
      end
    end
  end


end
