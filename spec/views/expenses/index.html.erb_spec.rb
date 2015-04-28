require 'rails_helper'

RSpec.describe "expenses/index", type: :view do
  before(:each) do
    assign(:expenses, [
      Expense.create!(
        :category => "Category",
        :amount => 1.5,
        :revenue => "Revenue",
        :date => '2/10/2015'
      ),
      Expense.create!(
        :category => "Category",
        :amount => 1.5,
        :revenue => "Revenue",
        :date => '2/10/2015'
      )
    ])
  end

  it "renders a list of expenses" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Revenue".to_s, :count => 2
  end
end
