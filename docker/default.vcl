vcl 4.1;

backend default {
    .host = "fuseki";
    .port = "3030";
}

sub vcl_backend_response {
    # Set TTL to a day
    set beresp.ttl = 1w;

    # Remove headers from fuseki response otherwise built in logic resets TTL
    unset beresp.http.Cache-Control;
    unset beresp.http.Pragma;
}
