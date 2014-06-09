require 'rest_client'

class UserController < ApplicationController
  def random
    @uid = params[:id]
    @request_str = "http://www.imdb.com/list/export?list_id=watchlist&author_id=#{@uid}"

    # Cookie is important
    begin
      @response = RestClient.get @request_str, cookie: "session-id=737-1731924-9252514; session-id-time=1509411924; __utma=168836921.88627112.1373495110.1387592338.1388622743.33; __utmv=168836921.|3=usertype=registered=1; uu=BCYiidaf2f5fdATwGxN91hUyslTdquM-oPRcgx7RWyXIOcCDClkBZk5cGA5m9mfTMTOrNfUwsm_xA1JGtX9UhVE80xp4ZtHryfZEBI-la51j8vwBITiRX6Xb-dVLl7qG7mcxVOzizlOe-1T5v89AFEqZn2ZtkYI5H1sPJe04MXD7Xp-AEcRbgiVKFWluI8J56OzAjh8dR2CJmNbhWQaCgJxOgl4DjoH2WNYn9X0-uzAEiJXhXP673Y4CCoaO1szLKwvsCuNFbApuaSKXLE71OJlzm6o0CrMo2ENvM4cmEbkX37sp-IW7adqV3JWfkBKhKmT3HAkEF8YDELT7v3uH4vWWCMvw3Sifz9bta4dgsgRvW37xMwELmbOp13ZWc0FyT6WKKqh9HUjLS7RrspjDYxIp3w; cs=Z96KeEz+/90WwAFKZIceTwCnKuwloW26o/c7DFPi/tm2xn0aMJFtjZrx5wqjwm4qI7JuKeAyfvmgkW2KB9EtmqCRWyxAGW26oKdbraCRbbqgsW26oJFt+uDBHYqg==; as=%7B%22h%22%3A%7B%22t%22%3A%5B0%2C0%5D%2C%22tr%22%3A%5B0%2C0%5D%2C%22in%22%3A%5B0%2C0%5D%2C%22ib%22%3A%5B0%2C0%5D%7D%2C%22n%22%3A%7B%22t%22%3A%5B728%2C85%5D%2C%22tr%22%3A%5B300%2C250%5D%2C%22in%22%3A%5B0%2C0%5D%2C%22ib%22%3A%5B0%2C0%5D%7D%7D; cache=BCYvkeTNaD_MX93OOuVwHR-wWDVnpC69OxF6CcKqmClSPLgrNbJ-vxMnMupesZyaK-8j9Fgiksa8w3ACkMz5f6RH2FbJRmIca4m1p9i9vWsavv4; id=BCYiLMCC8xC1Sx6aRPq0c9qgRkvN7anEFj6ggPKi4Y53ZX6CuvT5RewP4VM05lrZgCxrjFU3lpcFjcGffezPFS4r7IeuVvz3FRnzqdMLr6P7GAoSPWYxegnlP58xOVzE7U5gyiuC4BFsYsap2qv5s-d49dyGCY8R1xLS41tPm5sMAgRQ1aP2BFQWS0wzsVx5E1jP"
    rescue RestClient::ResourceNotFound
      @response = "Uh oh..."
    end

#     {
#   "log": {
#     "version": "1.2",
#     "creator": {
#       "name": "WebInspector",
#       "version": "537.36"
#     },
#     "pages": [],
#     "entries": [
#       {
#         "startedDateTime": "2014-06-06T23:06:26.441Z",
#         "time": 1208.5001468658447,
#         "request": {
#           "method": "GET",
#           "url": "http://www.imdb.com/list/export?list_id=watchlist&author_id=ur36128788",
#           "httpVersion": "HTTP/1.1",
#           "headers": [
#             {
#               "name": "Accept-Encoding",
#               "value": "gzip,deflate,sdch"
#             },
#             {
#               "name": "Host",
#               "value": "www.imdb.com"
#             },
#             {
#               "name": "Accept-Language",
#               "value": "en-US,en;q=0.8"
#             },
#             {
#               "name": "User-Agent",
#               "value": "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36"
#             },
#             {
#               "name": "Accept",
#               "value": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
#             },
#             {
#               "name": "Referer",
#               "value": "http://www.imdb.com/user/ur36128788/watchlist?ref_=nv_wl_all_0"
#             },
#             {
#               "name": "Cookie",
#               "value": "session-id=737-1731924-9252514; session-id-time=1509411924; __utma=168836921.88627112.1373495110.1387592338.1388622743.33; __utmv=168836921.|3=usertype=registered=1; uu=BCYiidaf2f5fdATwGxN91hUyslTdquM-oPRcgx7RWyXIOcCDClkBZk5cGA5m9mfTMTOrNfUwsm_xA1JGtX9UhVE80xp4ZtHryfZEBI-la51j8vwBITiRX6Xb-dVLl7qG7mcxVOzizlOe-1T5v89AFEqZn2ZtkYI5H1sPJe04MXD7Xp-AEcRbgiVKFWluI8J56OzAjh8dR2CJmNbhWQaCgJxOgl4DjoH2WNYn9X0-uzAEiJXhXP673Y4CCoaO1szLKwvsCuNFbApuaSKXLE71OJlzm6o0CrMo2ENvM4cmEbkX37sp-IW7adqV3JWfkBKhKmT3HAkEF8YDELT7v3uH4vWWCMvw3Sifz9bta4dgsgRvW37xMwELmbOp13ZWc0FyT6WKKqh9HUjLS7RrspjDYxIp3w; cs=Z96KeEz+/90WwAFKZIceTwCnKuwloW26o/c7DFPi/tm2xn0aMJFtjZrx5wqjwm4qI7JuKeAyfvmgkW2KB9EtmqCRWyxAGW26oKdbraCRbbqgsW26oJFt+uDBHYqg==; as=%7B%22h%22%3A%7B%22t%22%3A%5B0%2C0%5D%2C%22tr%22%3A%5B0%2C0%5D%2C%22in%22%3A%5B0%2C0%5D%2C%22ib%22%3A%5B0%2C0%5D%7D%2C%22n%22%3A%7B%22t%22%3A%5B728%2C85%5D%2C%22tr%22%3A%5B300%2C250%5D%2C%22in%22%3A%5B0%2C0%5D%2C%22ib%22%3A%5B0%2C0%5D%7D%7D; cache=BCYvkeTNaD_MX93OOuVwHR-wWDVnpC69OxF6CcKqmClSPLgrNbJ-vxMnMupesZyaK-8j9Fgiksa8w3ACkMz5f6RH2FbJRmIca4m1p9i9vWsavv4; id=BCYiLMCC8xC1Sx6aRPq0c9qgRkvN7anEFj6ggPKi4Y53ZX6CuvT5RewP4VM05lrZgCxrjFU3lpcFjcGffezPFS4r7IeuVvz3FRnzqdMLr6P7GAoSPWYxegnlP58xOVzE7U5gyiuC4BFsYsap2qv5s-d49dyGCY8R1xLS41tPm5sMAgRQ1aP2BFQWS0wzsVx5E1jP"
#             },
#             {
#               "name": "Connection",
#               "value": "keep-alive"
#             }
#           ],
#           "queryString": [
#             {
#               "name": "list_id",
#               "value": "watchlist"
#             },
#             {
#               "name": "author_id",
#               "value": "ur36128788"
#             }
#           ],
#           "cookies": [
#             {
#               "name": "session-id",
#               "value": "737-1731924-9252514",
#               "expires": null,
#               "httpOnly": false,
#               "secure": false
#             },
#             {
#               "name": "session-id-time",
#               "value": "1509411924",
#               "expires": null,
#               "httpOnly": false,
#               "secure": false
#             },
#             {
#               "name": "__utma",
#               "value": "168836921.88627112.1373495110.1387592338.1388622743.33",
#               "expires": null,
#               "httpOnly": false,
#               "secure": false
#             },
#             {
#               "name": "__utmv",
#               "value": "168836921.|3=usertype=registered=1",
#               "expires": null,
#               "httpOnly": false,
#               "secure": false
#             },
#             {
#               "name": "uu",
#               "value": "BCYiidaf2f5fdATwGxN91hUyslTdquM-oPRcgx7RWyXIOcCDClkBZk5cGA5m9mfTMTOrNfUwsm_xA1JGtX9UhVE80xp4ZtHryfZEBI-la51j8vwBITiRX6Xb-dVLl7qG7mcxVOzizlOe-1T5v89AFEqZn2ZtkYI5H1sPJe04MXD7Xp-AEcRbgiVKFWluI8J56OzAjh8dR2CJmNbhWQaCgJxOgl4DjoH2WNYn9X0-uzAEiJXhXP673Y4CCoaO1szLKwvsCuNFbApuaSKXLE71OJlzm6o0CrMo2ENvM4cmEbkX37sp-IW7adqV3JWfkBKhKmT3HAkEF8YDELT7v3uH4vWWCMvw3Sifz9bta4dgsgRvW37xMwELmbOp13ZWc0FyT6WKKqh9HUjLS7RrspjDYxIp3w",
#               "expires": null,
#               "httpOnly": false,
#               "secure": false
#             },
#             {
#               "name": "cs",
#               "value": "Z96KeEz+/90WwAFKZIceTwCnKuwloW26o/c7DFPi/tm2xn0aMJFtjZrx5wqjwm4qI7JuKeAyfvmgkW2KB9EtmqCRWyxAGW26oKdbraCRbbqgsW26oJFt+uDBHYqg==",
#               "expires": null,
#               "httpOnly": false,
#               "secure": false
#             },
#             {
#               "name": "as",
#               "value": "%7B%22h%22%3A%7B%22t%22%3A%5B0%2C0%5D%2C%22tr%22%3A%5B0%2C0%5D%2C%22in%22%3A%5B0%2C0%5D%2C%22ib%22%3A%5B0%2C0%5D%7D%2C%22n%22%3A%7B%22t%22%3A%5B728%2C85%5D%2C%22tr%22%3A%5B300%2C250%5D%2C%22in%22%3A%5B0%2C0%5D%2C%22ib%22%3A%5B0%2C0%5D%7D%7D",
#               "expires": null,
#               "httpOnly": false,
#               "secure": false
#             },
#             {
#               "name": "cache",
#               "value": "BCYvkeTNaD_MX93OOuVwHR-wWDVnpC69OxF6CcKqmClSPLgrNbJ-vxMnMupesZyaK-8j9Fgiksa8w3ACkMz5f6RH2FbJRmIca4m1p9i9vWsavv4",
#               "expires": null,
#               "httpOnly": false,
#               "secure": false
#             },
#             {
#               "name": "id",
#               "value": "BCYiLMCC8xC1Sx6aRPq0c9qgRkvN7anEFj6ggPKi4Y53ZX6CuvT5RewP4VM05lrZgCxrjFU3lpcFjcGffezPFS4r7IeuVvz3FRnzqdMLr6P7GAoSPWYxegnlP58xOVzE7U5gyiuC4BFsYsap2qv5s-d49dyGCY8R1xLS41tPm5sMAgRQ1aP2BFQWS0wzsVx5E1jP",
#               "expires": null,
#               "httpOnly": false,
#               "secure": false
#             }
#           ],
#           "headersSize": 1746,
#           "bodySize": 0
#         },
#         "response": {
#           "status": 200,
#           "statusText": "OK",
#           "httpVersion": "HTTP/1.1",
#           "headers": [
#             {
#               "name": "Date",
#               "value": "Fri, 06 Jun 2014 23:06:28 GMT"
#             },
#             {
#               "name": "Content-Encoding",
#               "value": "gzip"
#             },
#             {
#               "name": "Server",
#               "value": "HTTPDaemon"
#             },
#             {
#               "name": "P3P",
#               "value": "policyref=\"http://i.imdb.com/images/p3p.xml\",CP=\"CAO DSP LAW CUR ADM IVAo IVDo CONo OTPo OUR DELi PUBi OTRi BUS PHY ONL UNI PUR FIN COM NAV INT DEM CNT STA HEA PRE LOC GOV OTC \""
#             },
#             {
#               "name": "Vary",
#               "value": "Accept-Encoding,User-Agent"
#             },
#             {
#               "name": "Content-Type",
#               "value": "text/csv; charset=utf-8"
#             },
#             {
#               "name": "Cache-Control",
#               "value": "private"
#             },
#             {
#               "name": "Content-Disposition",
#               "value": "attachment; filename=\"WATCHLIST.csv\""
#             },
#             {
#               "name": "Set-Cookie",
#               "value": "id=BCYiLMCC8xC1Sx6aRPq0c9qgRkvN7anEFj6ggPKi4Y53ZX6CuvT5RewP4VM05lrZgCxrjFU3lpcFjcGffezPFS4r7IeuVvz3FRnzqdMLr6P7GAoSPWYxegnlP58xOVzE7U5gyiuC4BFsYsap2qv5s-d49dyGCY8R1xLS41tPm5sMAgRQ1aP2BFQWS0wzsVx5E1jP;expires=Thu, 30 Dec 2037 00:00:00 GMT;path=/;domain=.imdb.com"
#             },
#             {
#               "name": "Content-Length",
#               "value": "9222"
#             }
#           ],
#           "cookies": [
#             {
#               "name": "id",
#               "value": "BCYiLMCC8xC1Sx6aRPq0c9qgRkvN7anEFj6ggPKi4Y53ZX6CuvT5RewP4VM05lrZgCxrjFU3lpcFjcGffezPFS4r7IeuVvz3FRnzqdMLr6P7GAoSPWYxegnlP58xOVzE7U5gyiuC4BFsYsap2qv5s-d49dyGCY8R1xLS41tPm5sMAgRQ1aP2BFQWS0wzsVx5E1jP",
#               "path": "/",
#               "domain": ".imdb.com",
#               "expires": "2037-12-30T00:00:00.000Z",
#               "httpOnly": false,
#               "secure": false
#             }
#           ],
#           "content": {
#             "size": 0,
#             "mimeType": "text/csv",
#             "compression": 737
#           },
#           "redirectURL": "",
#           "headersSize": 737,
#           "bodySize": -737,
#           "_error": ""
#         },
#         "cache": {},
#         "timings": {
#           "blocked": 2.999999967869371,
#           "dns": 0,
#           "connect": 27.000000001862645,
#           "send": 0,
#           "wait": 1174.9999999883585,
#           "receive": 3.5001469077542424,
#           "ssl": -1
#         },
#         "connection": "210659"
#       }
#     ]
#   }
# }
  end
end
