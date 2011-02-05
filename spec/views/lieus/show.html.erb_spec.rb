require 'spec_helper'

describe "lieus/show.html.erb" do
  before(:each) do
    @lieu = assign(:lieu, stub_model(Lieu,
      :lat => 1.5,
      :lng => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
