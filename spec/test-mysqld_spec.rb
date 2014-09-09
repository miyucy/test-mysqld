require 'spec_helper'

describe Test::Mysqld do
  describe '.auto_start=' do
    it 'works' do
      [[true, true], [false, false], [nil, false], [1, true], ['false', true], [Object.new, true]].each do |rvar, expect|
        Test::Mysqld.auto_start = rvar
        expect(Test::Mysqld.auto_start).to eq expect
      end
    end
  end
end
