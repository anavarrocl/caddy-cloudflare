FROM caddy:builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare@1fb64108d4debf196b19d7398e763cb78c8a0f41

FROM caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
