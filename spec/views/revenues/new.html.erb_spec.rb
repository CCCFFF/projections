require 'rails_helper'

RSpec.describe "revenues/new", type: :view do
  before(:each) do
    assign(:revenue, Revenue.new(
      :category => "MyString",
      :amount => 1.5
    ))
  end

  it "renders new revenue form" do
    render

    assert_select "form[action=?][method=?]", revenues_path, "post" do

      assert_select "input#revenue_category[name=?]", "revenue[category]"

      assert_select "input#revenue_amount[name=?]", "revenue[amount]"
    end
  end
end
