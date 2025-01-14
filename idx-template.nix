{ pkgs, ENV_VAR1 ? "default1", ENV_VAR2 ? "default2", ... }: {
  bootstrap = ''
    mkdir -p "$WS_NAME"
    cp -r ${./.}/* "$WS_NAME"
    echo "ENV_VAR1=${ENV_VAR1}" > "$WS_NAME/.env"
    echo "ENV_VAR2=${ENV_VAR2}" >> "$WS_NAME/.env"
    chmod +w "$WS_NAME/.env"
  '';
}

