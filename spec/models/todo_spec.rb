require 'rails_helper'

RSpec.describe Todo, type: :model do
  describe 'validations' do
    context 'body is empty' do
      it 'be invalid' do
        todo = Todo.new(body: '')
        expect(todo).to be_invalid
      end

      it 'be valid' do
        todo = Todo.new(body: 'work hard')
        expect(todo).to be_valid
      end
    end
  end
end
