" MixiGraphApiDoAuthorize 'r_profile'
" first, you can do this command.
command! -nargs=1 MixiGraphApiDoAuthorize
            \ call mixi_graph_api#authorization#do(<args>)

" second, you must copy code parameter from redirected screen.
" MixiGraphApiGetAccessToken 'something_hashed_authorization_code'
command! -nargs=1 MixiGraphApiGetAccessToken
            \ call mixi_graph_api#get_access_token#do(<args>)

" third, you must copy access_token from second response.
" so now, you can use graph api!
" MixiGraphApiPostPeopleAPI 'access_token'
command! -nargs=1 MixiGraphApiPostPeopleAPI
            \ call mixi_graph_api#people_api#post(<args>)

