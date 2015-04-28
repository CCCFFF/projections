require 'rails_helper'

RSpec.describe "revenues/index", type: :view do
  before(:each) do
    assign(:revenues, [
      Revenue.create!(
        :category => "Category",
        :amount => 1.5,
        :date => '2/10/2015'
      ),
      Revenue.create!(
        :category => "Category",
        :amount => 1.5,
        :date => '2/10/2015'
      )
    ])
  end

  it "renders a list of revenues" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
