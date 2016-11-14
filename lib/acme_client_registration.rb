class AcmeClientRegistration

  DEBUG_ENDPOINT = "https://acme-staging.api.letsencrypt.org/"
  LIVE_ENDPOINT  = "https://acme-v01.api.letsencrypt.org/"

  attr_reader :endpoint, :client

  def initialize(options = {})
    if options[:debug]
      @endpoint = DEBUG_ENDPOINT
    else
      @endpoint = LIVE_ENDPOINT
    end

    @client = Acme::Client.new(private_key: OpenSSL::PKey::RSA.new(4096), endpoint: @endpoint)
  end

end
