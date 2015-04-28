require 'rails_helper'

RSpec.describe "expenses/new", type: :view do
  before(:each) do
    assign(:expense, Expense.new(
      :category => "MyString",
      :amount => 1.5,
      :revenue => "MyString",
      :date => '2/10/2015'
    ))
  end

  it "renders new expense form" do
    render

    assert_select "form[action=?][method=?]", expenses_path, "post" do

      assert_select "input#expense_category[name=?]", "expense[category]"

      assert_select "input#expense_amount[name=?]", "expense[amount]"

      assert_select "input#expense_revenue[name=?]", "expense[revenue]"
    end
  end
end
