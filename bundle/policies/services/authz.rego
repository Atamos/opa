package policies.services.authz

default hello = false

hello {
    m := input.message
    m == "world"
}