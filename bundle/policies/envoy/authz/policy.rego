package envoy.authz

import input.attributes.request.http as http_request

default allow = false

allow {
  http_request.method = "GET"
  "konbawa" != input.parsed_path[0]
}

allow {
  http_request.method = "POST"
}

allow {
  http_request.method == "GET"
  "konbawa" == input.parsed_path[0]
  "marcolino" == input.parsed_path[1]
}  
allow {
  http_request.method == "GET"
  "konbawa" == input.parsed_path[0]
  "marco" == input.parsed_path[1]
}  