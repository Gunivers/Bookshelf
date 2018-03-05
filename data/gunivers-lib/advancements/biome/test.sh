for f in *; do
    test -f "$f" && echo mv "$f" "$( tr 'A-Z' 'a-z' <<<"$f" )"
done
