
" you can fix consumer_key, consumer_scret and redirect_uri.
let s:config = {
\ 'access_token_url' : "https://secure.mixi-platform.com/2/token",
\ 'authorize_url'    : "https://mixi.jp/connect_authorize.pl",
\ 'consumer_key'     : "",
\ 'consumer_secret'  : "",
\ "redirect_uri"     : "http://local.host/",
\}

function! mixi_graph_api#config#get()
    return s:config
endf

