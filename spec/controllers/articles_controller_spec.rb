
require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'get article#index' do
    it 'render index template' do
      get :index
      expect(subject).to render_template('index')
      expect(response.status).to eq 200
    end
  end
end
