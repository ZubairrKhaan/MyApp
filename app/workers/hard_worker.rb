class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "Running Sidekiq job with #{args.inspect}"
  end
end
