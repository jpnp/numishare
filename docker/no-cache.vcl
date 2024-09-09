vcl 4.1;

backend default {
    .host = "fuseki";
    .port = "3030";
}

sub vcl_recv {
    return(pass);
}

