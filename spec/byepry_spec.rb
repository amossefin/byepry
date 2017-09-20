require "spec_helper"
require "byepry"
RSpec.describe Byepry do
  it "has a version number" do
    expect(Byepry::VERSION).not_to be nil
  end

  it "checks to see if byebug or binding.pry are in source code" do
    expect(false).to eq(true)
  end
end
