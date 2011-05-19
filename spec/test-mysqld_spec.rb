require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Test::Mysqld do
  describe ".auto_start" do
    subject { Test::Mysqld }
    its(:auto_start) { should be_false }

    context "after set true" do
      before { Test::Mysqld.auto_start = true }
      its(:auto_start) { should be_true }
    end

    describe "should be true or false" do
      it "set Integer" do
        Test::Mysqld.auto_start = 1
        Test::Mysqld.auto_start.should be_true
      end

      it "set String" do
        Test::Mysqld.auto_start = "false"
        Test::Mysqld.auto_start.should be_true
      end

      it "set nil" do
        Test::Mysqld.auto_start = nil
        Test::Mysqld.auto_start.should be_false
      end
    end
  end
end
