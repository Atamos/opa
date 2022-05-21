package envoy.authz

import input.attributes.request.http as http_request
import future.keywords.in

default allow = false

allow {
  http_request.method == "GET"
  some "marcolino" in input.parsed_path
}  

allow {
  http_request.method == "GET"
  some "marco" in input.parsed_path
}  
