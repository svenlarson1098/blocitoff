require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end

    it "instantiates a current user" do
      get :show
      expect(assigns(:users)).to_not be_nil
    end
end
end
