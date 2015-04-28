require 'rails_helper'

RSpec.describe "expenses/show", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      :category => "Category",
      :amount => 1.5,
      :revenue => "Revenue",
      :date => '2/10/2015'
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Revenue/)
  end
end
