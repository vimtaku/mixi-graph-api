
" scope must be space separated string like 'r_profile w_profile'
function! mixi_graph_api#authorization#do(scope)
    let config = mixi_graph_api#config#get()

    let auth_param = {
    \ "client_id"     : config['consumer_key'],
    \ "response_type" : "code",
    \ "scope"         : a:scope,
    \ "display"       : "pc",
    \}

    let authorize_query = config['authorize_url'] . '?' . webapi#http#encodeURIComponent(auth_param)
    exec 'OpenBrowser ' . authorize_query
endfun

