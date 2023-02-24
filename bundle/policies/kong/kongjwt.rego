package policies.kong.kongjwt

default allow = false

allow { 
  is_get
  match_claims
}

## Allowed issuer(s)

is_get {
  input.method == "GET"
}

is_post {
   input.method == "POST"
}

match_claims {
  input.token.payload.scope = "openid read"
}

