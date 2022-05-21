package envoy.authz

import input.attributes.request.http as http_request

default allow = false

allow {
  http_request.method == "GET"
  input.parsed_path[_] = 'marcolino'
  some "marcolino" in input.parsed_path
}  
