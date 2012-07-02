require File.expand_path('../../test_helper', __FILE__)

describe Conversion do
  subject() { Conversion }
  let(:formats) { subject.formats.map(&:last) }
  let(:expected) { [:gcal, :ical, :csv] }

  describe "validations" do
    # it { must validate_presence_of(:url) }
    # it { must validate_presence_of(:format) }
  end

  describe ".formats" do
    it "knows the formats it can output to" do
      subject.formats.must_be_instance_of Array
    end

    it "supports expected formats" do
      formats.size.must_equal 3
      (expected - formats).size.must_equal 0
    end
  end
end

