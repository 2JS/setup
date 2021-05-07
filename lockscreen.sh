UUID=$(dscl . -read $HOME GeneratedUID)
UUID=${UUID#GeneratedUID: }

mkdir -p "/Library/Caches/Desktop Pictures/$UUID"

cp $1 "/Library/Caches/Desktop Pictures/$UUID/lockscreen.png"
