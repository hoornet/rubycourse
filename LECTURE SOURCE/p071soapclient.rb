# p071soapclient.rb
=begin
require 'soap/rpc/driver'
driver = SOAP::RPC::Driver.new(
  'http://www.swanandmokashi.com/HomePage/WEBSERVICES/QuoteOfTheDay.asmx',
  's0:QuoteOfTheDaySoap')
driver.add_method('GetQuote')
puts driver.GetQuote
=end
require 'soap/wsdlDriver'

wsdl = 'http://services.xmethods.net/soap/urn:xmethods-delayed-quotes.wsdl'
driver = SOAP::WSDLDriverFactory.new(wsdl).create_rpc_driver
puts driver.getQuote('MSFT')