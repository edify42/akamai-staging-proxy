# akamai-staging-proxy
It's often very useful to test on the Akamai staging network before activating configuration on the production network. This docker container will proxy your request to the backends you specify

## How to 

1. Add into your /etc/hosts file the domain of interest you want proxied through this container
`127.0.0.1 www.superfunhax.com`
2. Edit the proxy.conf and passthrough.conf to use the DNS record setup for your endpoint
3. Run the `./runner.sh` script


# Considerations
- You could just edit the hosts file to point to a \*.edgesuite-staging.net or \*.edgekey-staging.net server IP (any from Akamai staging pool)
- You could use a custom DNS server to do the CNAME to your Akamai edge-staging endpoint
