require 'rails_helper'

RSpec.describe 'Todos', type: :system do
  before(:each) do
    @todo1 = Todo.create(body: 'Todo1')
    @todo2 = Todo.create(body: 'Todo2')
  end

  it 'renders a list of todos' do
    visit todos_path
    expect(page).to have_content @todo1.body
    expect(page).to have_content @todo2.body
  end
end
