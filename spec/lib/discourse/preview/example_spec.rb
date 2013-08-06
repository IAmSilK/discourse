require "spec_helper"

describe Discourse::Oneboxer::Preview::Example do
  describe "#to_html" do
    it "returns template if given valid data" do
      example = described_class.new(Nokogiri::HTML(File.read(File.join("spec", "fixtures", "example.response"))), "http://www.example.com")
      expect(example.to_html).to eq(onebox_view("<h1>Example Domain</h1>"))
    end
  end
end
