require 'rails_helper'

RSpec.describe "goals/index", type: :view do
  before(:each) do
    assign(:goals, [
      Goal.create!(
        :description => "MyText",
        :start_date => '2015/2/10',
        :end_date => '2015/4/20'
      ),
      Goal.create!(
        :description => "MyText",
        :start_date => '2015/2/10',
        :end_date => '2015/4/20'
      )
    ])
  end

  it "renders a list of goals" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
