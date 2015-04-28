require 'rails_helper'

RSpec.describe "revenues/edit", type: :view do
  before(:each) do
    @revenue = assign(:revenue, Revenue.create!(
      :category => "MyString",
      :amount => 1.5
    ))
  end

  it "renders the edit revenue form" do
    render

    assert_select "form[action=?][method=?]", revenue_path(@revenue), "post" do

      assert_select "input#revenue_category[name=?]", "revenue[category]"

      assert_select "input#revenue_amount[name=?]", "revenue[amount]"
    end
  end
end
