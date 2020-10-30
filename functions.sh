echo "Loading functions..."


mkcd() {
  mkdir -p $1 && cd $1
}

mkth() {
      for p in "$@"; do
        _dir="$(dirname -- "$p")"
        [ -d "$_dir" ] || mkdir -p -- "$_dir"
    touch -- "$p"
    done
}

updateall() {
  brew update && brew upgrade
}

gendigest() {
  echo -n $1 | openssl dgst -binary -sha256 | openssl base64
}