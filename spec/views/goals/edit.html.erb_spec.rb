require 'rails_helper'

RSpec.describe "goals/edit", type: :view do
  before(:each) do
    @goal = assign(:goal, Goal.create!(
      :description => "MyText",
      :start_date => '2015/2/10',
      :end_date => '2015/4/20'
    ))
  end

  it "renders the edit goal form" do
    render

    assert_select "form[action=?][method=?]", goal_path(@goal), "post" do

      assert_select "textarea#goal_description[name=?]", "goal[description]"
    end
  end
end
