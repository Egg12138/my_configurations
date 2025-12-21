sudo tee /usr/share/bash-completion/completions/deps-check >/dev/null <<'EOF'
# completion for deps-check

_deps_check() {
    local cur prev opts
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    opts="-h -q -p"

    if [[ "$prev" == "-p" ]]; then
        COMPREPLY=($(compgen -W "$(apt-cache pkgnames)" -- "$cur"))
        return
    fi

    if [[ "$cur" == -* ]]; then
        COMPREPLY=($(compgen -W "$opts" -- "$cur"))
        return
    fi

    COMPREPLY=($(compgen -W "$(apt-cache pkgnames)" -- "$cur"))
}

complete -F _deps_check deps-check deps
EOF

