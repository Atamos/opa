package envoy.authz

import input.attributes.request.http as http_request

default allow = false

allow {
  http_request.method == "GET"
  ns := "marcolino"
  some ns in input.parsed_path
}  
