if exists("b:current_syntax")
    finish
endif

syntax keyword hdbsequenceProperties schema increment_by start_with maxvalue nomaxvalue minvalue nominvalue cycles reset_by public depends_on_table depends_on_view depends_on
syntax keyword hdbsequenceBooleans true false
syntax region hdbsequenceString start=/\v"/  end=/\v"/
syntax match hdbsequenceComment "\/\/.*"
syntax match hdbsequenceNumber "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"

hi def link hdbsequenceProperties Special
hi def link hdbsequenceBooleans Boolean
hi def link hdbsequenceString String
hi def link hdbsequenceComment Comment
hi def link hdbsequenceNumber Number

let b:current_syntax = "hdbsequence"
