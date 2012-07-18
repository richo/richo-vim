syn match   gitcommitLowerCaseFirstChar	"^[a-z]" contained containedin=gitcommitSummary nextgroup=gitcommitOverflow contains=@Spell
hi def link gitcommitLowerCaseFirstChar		Error
