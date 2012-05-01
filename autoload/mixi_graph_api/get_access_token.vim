
function! mixi_graph_api#get_access_token#do(authorization_code)
    let config = mixi_graph_api#config#get()
    " リダイレクトされた url に付与される Authorization code を指定
    let authorization_code = a:authorization_code
    let get_token_param = {
    \ "grant_type"    : "authorization_code",
    \ "client_id"     : config['consumer_key'],
    \ "client_secret" : config['consumer_secret'],
    \ "code"          : authorization_code,
    \ "redirect_uri"  : config['redirect_uri'],
    \}

    let get_token_response = webapi#http#post(config['access_token_url'], get_token_param)

    let content       = get_token_response['content']
    let refresh_token = content['refresh_token']
    let access_token  = content['access_token']

    echo get_token_response
endfun

