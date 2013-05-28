require 'rest-client'
require 'json'
require 'erb'

DEFAULT_CREDENTIALS="https://502d468c1ea10fc317000032:3_wGdBaMiqtO-HMkf3t6@app-testing.embarkmobile.com"

base_url = ENV['URL'] || DEFAULT_CREDENTIALS

endpoint = "#{base_url}/api/v1/worker.json"

response = RestClient.get endpoint

response = JSON.parse(response)
users = response.map {|u| [u["name"], u["enrollment"]["barcode"]]}

erb = ERB.new(File.read('barcodes.erb'))

out = open("barcodes.html", "w")
out.puts erb.result(binding)
