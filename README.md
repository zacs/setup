# Machine setup
[![Build Status](https://travis-ci.org/zacs/setup.svg)](https://travis-ci.org/zacs/setup)

This is my personal machine setup.

It's largely set up for my particular needs, but by using roles (and swapping
files, etc) it is quite easy to customize. Remove as much as possible and
build up, making changes as you go, so it fits your needs. The only things
you need to change are in `roles`.

### Set up

To install, all you need to do is run `bootstrap.sh` remotely. It will install some pre-requisites (gcc,
[Homebrew](http://brew.sh/), git, and [Ansible](http://docs.ansible.com/)) and will then clone this repo locally (by default it clones into `~/.setup`) and run the playbook:

    $ curl -fsSL https://raw.githubusercontent.com/zacs/setup/master/bootstrap.sh | sh

If you prefer not to run code remotely, you just need to clone the repo down wherever you would like, and run:

    $ ./bootstrap.sh

After installing the prerequisites this will run the `local` playbook
for the first time. If for some reason `bootstrap.sh` barfs, you can run the playbook manually via:

    $ ansible-playbook local.yml -i hosts --ask-sudo-pass --connection=local

If it's your first time, go brew some coffee or tea because this will
take some time building packages.

### Why?

Flattening and restarting a dev machine is daunting insofar as the time it
takes, as well as the potential to forget things. Now I can wipe a machine
and don't need to worry about the consequences.

GitHub's Boxen looked great but overkill, and I wanted to learn Ansible,
so here we are.

### Credits

The original inspiration was @bennylope's [setup](https://github.com/bennylope/macbook-configuration),
though I've deviated quite a bit (and added continuous integration testing).

### License

Public domain. Party.
