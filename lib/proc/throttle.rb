class Proc
  def throttle(sec)
    thread = nil

    Proc.new do |*args|
      if thread && !thread.stop?
        thread.kill
      end

      thread = Thread.new do
        sleep(sec)
        self.call(*args)
      end
    end
  end
end
