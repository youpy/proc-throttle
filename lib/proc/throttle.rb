class Proc
  def throttle(delay_sec)
    thread = nil

    Proc.new do |*args|
      if thread && thread.alive?
        thread.kill
      end

      thread = Thread.new do
        sleep(delay_sec)
        self.call(*args)
      end
    end
  end
end
