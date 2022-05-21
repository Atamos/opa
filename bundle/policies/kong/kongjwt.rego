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


match_claims {
  input.token.payload.scope = "openid read"
}

