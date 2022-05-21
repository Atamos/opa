package policies.services.authz2

default hello = false

hello {
    m := input.message
    m == "marco"
}