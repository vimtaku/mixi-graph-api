function! mixi_graph_api#people_api#post(access_token)
    let api_req_header = {
    \ "Content-Type" : "application/x-www-form-urlencoded",
    \ "Authorization": "OAuth " . a:access_token,
    \}
    let people_api_url = "http://api.mixi-platform.com/2/people/@me/@self"
    let method = 'GET'
    let people_api_response = webapi#http#post(people_api_url, {}, api_req_header, method)
    echo people_api_response
    return people_api_response
endfunction

