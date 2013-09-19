require 'spec_helper'

describe V2::ServiceInstancesController do
  before { authenticate }

  describe '#create' do
    it 'sends back a dashboard url' do
      put :create, id: '42'

      expect(response.status).to eq(201)
      instance = JSON.parse(response.body)

      expect(instance['dashboard_url']).to eq('http://fake.dashboard.url')
    end
  end
end