SparkPostRails.configure do |c|
    c.api_key = ENV['Sparkpost_API_KEY']
    c.sandbox       = false
    c.track_clicks  = false
    c.track_opens   = false
    c.transactional = false
end