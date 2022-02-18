require 'rails_helper'

RSpec.describe 'Homeauths', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/homeauth/index'
      expect(response).to have_http_status(:success)
    end
  end
end
