source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

export FZF_DEFAULT_COMMAND='fd'
export FZF_COMPLETION_TRIGGER='\'

# export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
export FZF_DEFAULT_OPTS='--border --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'

_fzf_complete_ns3() {
  _fzf_complete --prompt="ns3> " -- "$@" < <(
    ns3 show targets | sed -n '/Runnable\/Buildable targets:/,$p' | sed '/Runnable\/Buildable targets:/d' | sed 's/ /\n/g' | sed '/^$/d'
  )
}
