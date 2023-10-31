# Infrastructure

Random bits of infrastructure documentation for doing various things with networks, VMs, and more.

## DigitalOcean Testing VM

Spin up a testing VM for playing around with, or recording Machinima.

```shell
doctl compute droplet create \
    --context $DO_CONTEXT \
    --ssh-keys $DO_SSH_KEY_FINGERPRINT \
    --image ubuntu-22-04-x64 \
    --size c-4 \
    --region syd1 \
    --vpc-uuid 112d689c-5cfa-478f-8ca5-300091af6f27 \
    --enable-monitoring \
    wow-testing
```

This requires doing `doctl auth init --context wow` and providing a valid DO API token.

Then you can do:

```shell
doctl --context wow compute droplet list --format Name,PublicIPV4
```
