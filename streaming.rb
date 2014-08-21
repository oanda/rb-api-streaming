require 'net/http'

# ------ Change these lines ------
environment='http://stream-sandbox.oanda.com'
accessToken='ACCESS-TOKEN'
accountIds='accountIds'
showHeartBeats=1
# --------------------------------

# --------------------------------
# The environment variable should be:
#
# For Sandbox    -> http://stream-sandbox.oanda.com
# For fxPractice -> https://stream-fxpractice.oanda.com
# For fxTrade    -> https://stream-fxtrade.oanda.com
# --------------------------------

uri = URI(environment + '/v1/events?accountIds=' + accountIds)

Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
    request = Net::HTTP::Get.new uri
    request['Authorization'] = 'Bearer ' + accessToken

    http.request request do |response|
        response.read_body do |chunk|
            if showHeartBeats==1 or not chunk.include? 'heartbeat'
                puts chunk
            end
        end
    end
end
