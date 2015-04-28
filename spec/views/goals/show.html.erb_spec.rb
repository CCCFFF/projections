require 'rails_helper'

RSpec.describe "goals/show", type: :view do
  before(:each) do
    @goal = assign(:goal, Goal.create!(
      :description => "MyText",
      :start_date => '2015/2/10',
      :end_date => '2015/4/20'
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
