class Proc
  def throttle(delay_sec, debounce = false)
    thread = nil
    last_exec = nil

    Proc.new do |*args|
      now = Time.now.to_f

      if thread && thread.alive?
        thread.kill
      end

      if !debounce
        if (last_exec.nil? || (last_exec + delay_sec < now))
          self.call(*args)
          last_exec = now
        end
      else
        thread = Thread.new do
          sleep(delay_sec)
          self.call(*args)
          last_exec = Time.now.to_f
        end
      end
    end
  end

  def debounce(delay_sec)
    throttle(delay_sec, true)
  end
end
