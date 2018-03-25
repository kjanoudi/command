Git.io: GitHub URL Shortener
 Nov 10, 2011
technoweenie
technoweenie
 Broadcast
Do you have a GitHub URL you’d like to shorten? Use Git.io!

$ curl -i https://git.io -F "url=https://github.com/..."
HTTP/1.1 201 Created
Location: https://git.io/abc123

$ curl -i https://git.io/abc123
HTTP/1.1 302 Found
Location: https://github.com/...
You can specify your own code to setup your own vanity URL:

$ curl -i https://git.io -F "url=https://github.com/technoweenie" \
    -F "code=t"
HTTP/1.1 201 Created
Location: https://git.io/t
