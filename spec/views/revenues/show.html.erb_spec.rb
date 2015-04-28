require 'rails_helper'

RSpec.describe "revenues/show", type: :view do
  before(:each) do
    @revenue = assign(:revenue, Revenue.create!(
      :category => "Category",
      :amount => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/1.5/)
  end
end
