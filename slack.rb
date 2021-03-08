require 'slack-notify'
require 'clockwork'
require 'active_support/time'
require 'dotenv'
Dotenv.load

module Clockwork
  sample = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")

  handler do |job|
    sample.notify(job)
  end

  every(3.minutes, 'testing')
end
