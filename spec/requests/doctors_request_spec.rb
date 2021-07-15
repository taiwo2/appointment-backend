require 'rails_helper'

RSpec.describe 'Doctors', type: :request do
  it 'unauthorized to see doctors without logging in' do
    get '/api/v1/doctors'
    expect(response).to have_http_status(:unauthorized)
  end

  it 'renders list of doctors only for logged in user' do
    post '/login', params:
      {
        email: 'abcdef@mail.com',
        password: '12345678'
      }
    headers = { 'Authorization': JSON.parse(response.body)['jwt'] }
    get '/api/v1/doctors', headers: headers
    expect(response).to have_http_status(:ok)
    expect(response.content_type).to eq('application/json')
  end
end
