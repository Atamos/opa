package envoy.authz

import input.attributes.request.http as http_request

default allow = false

allow {
  http_request.method = "GET"
  "hello" != input.parsed_path[0]
}


allow {
  http_request.method == "GET"
  "marcolino" == input.parsed_path[1]
}  
allow {
  http_request.method == "GET"
  "marco" == input.parsed_path[1]
}  