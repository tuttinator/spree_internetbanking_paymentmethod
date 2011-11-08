require "spree_internetbanking_paymentmethod/version"
require 'spree_core'

module SpreeInternetbankingPaymentmethod
  class Engine < Rails::Engine
    railtie_name "spree_internetbanking_paymentmethod"

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end      
    end
    
    initializer "spree_internetbanking_paymentmethod.register.payment_methods" do |app|
      app.config.spree.payment_methods += [
        PaymentMethod::InternetBanking
      ]
    end

    config.to_prepare &method(:activate).to_proc
  end
end
