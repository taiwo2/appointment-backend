require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  it 'unauthorized to see appointments without logging in' do
    get '/api/v1/users/1/appointments'
    expect(response).to have_http_status(:unauthorized)
  end

  it 'renders list of appointments only for logged in user' do
    post '/login', params:
      {
        email: 'abcdef@mail.com',
        password: '12345678'
      }
    headers = { 'Authorization': JSON.parse(response.body)['jwt'] }
    get "/api/v1/users/#{JSON.parse(response.body)['user']['id']}/appointments", headers: headers
    expect(response).to have_http_status(:ok)
    expect(response.content_type).to eq('application/json')
  end

  it 'only logged in user can create an appointment' do
    post '/login', params:
      {
        email: 'abcdef@mail.com',
        password: '12345678'
      }
    d = Doctor.create(name: 'Abcde')
    headers = { 'Authorization': JSON.parse(response.body)['jwt'] }
    post "/api/v1/users/#{JSON.parse(response.body)['user']['id']}/appointments", headers: headers, params:
     {
       doctor_id: d.id,
       appointment_date: Date.new(2020, 11, 29)
     }
    expect(response).to have_http_status(:created)
    expect(response.content_type).to eq('application/json')
  end

  it 'expect to have http status forbidden if logged in user tries to view other appointments' do
    u = User.create(name: 'John Doe', email: 'xyz@mail.com', password: '123456', password_confirmation: '123456')
    post '/login', params:
      {
        email: 'abcdef@mail.com',
        password: '12345678'
      }
    headers = { 'Authorization': JSON.parse(response.body)['jwt'] }
    get "/api/v1/users/#{u.id}/appointments", headers: headers
    expect(response).to have_http_status(:forbidden)
    expect(response.content_type).to eq('application/json')
  end
end
