echo "Spamming Commits"

while :; do
head -c 256 /dev/urandom | sha512sum > $RANDOM
git pull
git add .
git commit -m "fill bytes"
git push
done
