# Check whether the long random volume contains old Jenkins data

sudo docker run --rm \
-v 17ab0b3182e2c6111feeb1b82f80d89cc7812802825dfe7f1bb2862a4d2aeaa0:/data \
ubuntu bash -c "ls -la /data"

echo ""
echo "=== Looking for Jenkins folders ==="

sudo docker run --rm \
-v 17ab0b3182e2c6111feeb1b82f80d89cc7812802825dfe7f1bb2862a4d2aeaa0:/data \
ubuntu bash -c "ls -la /data/jobs /data/plugins /data/users 2>/dev/null"
