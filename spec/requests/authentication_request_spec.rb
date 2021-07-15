require 'rails_helper'

RSpec.describe 'Authentications', type: :request do
  User.create(name: 'Shabab', email: 'abcdef@mail.com', password: '12345678', password_confirmation: '12345678')
  it 'logs in a new user' do
    post '/login', params:
      {
        email: 'abcdef@mail.com',
        password: '12345678'
      }
    expect(response.body).to include('jwt')
    expect(response.content_type).to eq('application/json')
    expect(response).to have_http_status(:ok)
  end

  it 'unauthorized for non existing user' do
    post '/login', params:
      {
        email: 'abcd@mail.com',
        password: '12345678'
      }
    expect(response).to have_http_status(:unauthorized)
  end

  it 'checks if user is already logged in' do
    post '/login', params:
      {
        email: 'abcdef@mail.com',
        password: '12345678'
      }
    headers = { 'Authorization': JSON.parse(response.body)['jwt'] }
    get '/auto_login', headers: headers
    expect(response).to have_http_status(:ok)
    expect(response.body).to include('name')
  end
end
