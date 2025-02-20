=begin
#OneSignal

#A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

The version of the OpenAPI document: 1.4.0
Contact: devrel@onesignal.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'spec_helper'

describe OneSignal::Configuration do
  let(:config) { OneSignal::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.onesignal.com")
    # OneSignal.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.onesignal.com")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.onesignal.com")
      end
    end
  end
end
