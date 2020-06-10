This portage config is designed to be used across computers to enable package reuse.

### Instructions:
* checkout at `/etc/portage`
* mount your Portage config, via the following fstab entry (requires `nfs-utils`)

        kotomi:/srv/portage           /mnt/portage        nfs     defaults,noatime,async,_netdev   0 0

* create a symlink in `./host_specific` to the relevant profile called `local.conf`
* `eselect profile set` accordingly (otherwise your USE flags won't match)
* emerge @world

