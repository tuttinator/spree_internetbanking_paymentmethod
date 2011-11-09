# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "spree_internetbanking_paymentmethod/version"

Gem::Specification.new do |s|
  s.name        = "spree_internetbanking_paymentmethod"
  s.version     = SpreeInternetbankingPaymentmethod::VERSION
  s.authors     = ["tuttinator"]
  s.email       = ["caleb.tutty@gmail.com"]
  s.homepage    = ""
  s.summary     = "Spree Internet Banking Payment Method"
  s.description = "a payment method for Spree Ecommerce to use internet banking"

  s.rubyforge_project = "spree_internetbanking_paymentmethod"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_dependency('spree_core', '>= 0.70.0')
  
end
