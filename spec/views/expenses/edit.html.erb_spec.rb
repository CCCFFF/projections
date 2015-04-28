require 'rails_helper'

RSpec.describe "expenses/edit", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      :category => "MyString",
      :amount => 1.5,
      :revenue => "MyString",
      :date => '2/10/2015'
    ))
  end

  it "renders the edit expense form" do
    render

    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do

      assert_select "input#expense_category[name=?]", "expense[category]"

      assert_select "input#expense_amount[name=?]", "expense[amount]"

      assert_select "input#expense_revenue[name=?]", "expense[revenue]"
    end
  end
end
