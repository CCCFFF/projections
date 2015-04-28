require 'rails_helper'

RSpec.describe "goals/new", type: :view do
  before(:each) do
    assign(:goal, Goal.new(
      :description => "MyText",
      :start_date => '2015/2/10',
      :end_date => '2015/4/20'
    ))
  end

  it "renders new goal form" do
    render

    assert_select "form[action=?][method=?]", goals_path, "post" do

      assert_select "textarea#goal_description[name=?]", "goal[description]"
    end
  end
end
