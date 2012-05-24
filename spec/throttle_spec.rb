require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Proc do
  describe '#throttle' do
    it 'should throttle proc call' do
      count = 0

      proc = Proc.new do |increment|
        count += increment || 1
      end

      throttled_proc = proc.throttle(1)

      10.times do
        throttled_proc.call
      end

      sleep 1.1

      count.should eql(1)

      throttled_proc.call

      sleep 1.1

      count.should eql(2)

      throttled_proc.call(10)

      sleep 1.1

      count.should eql(12)
    end
  end
end
