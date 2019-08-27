require 'rails_helper'

RSpec.describe Api::V1::ApplicationController, type: :controller do
    describe 'includes the correct concerns' do
        it {expect(controller.class.ancestors).to include(Authenticable)} #retorno uma lista de classes que são implementadas dentro do application controller
    end
end 