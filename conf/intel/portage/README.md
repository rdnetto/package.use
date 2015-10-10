To configure portage:

* set your profile to `default/linux/amd64/13.0/desktop`
* replace /etc/portage with this repo

        rm -rf /etc/portage
        git clone https://github.com/rdnetto/portage-files.git

* fork a local branch for machine-specific configuration, and configure it to track master by rebasing (opt.)
* download and run [my script for merging the Sabayon files](https://gist.github.com/rdnetto/522839021a240650c20d)

        curl https://gist.githubusercontent.com/rdnetto/522839021a240650c20d/raw > /var/lib/entropy/sync-entropy-files.sh
        chmod +x /var/lib/entropy/sync-entropy-files.sh
        /var/lib/entropy/sync-entropy-files.sh

        cd /var/cache/sabayon-build/conf/intel/portage
        cp -r env profile package.* /etc/portage/

