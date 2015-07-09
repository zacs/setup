# Personal computer configuration.

This is my personal configuration bootstrapper. There are many like it, but
this one is mine.

For that reason it's largely set up for my particular needs. If you want
to use it yourself I'd recommend reading through it first. Remove as
much as possible and build up, making changes as you go, so it fits your
needs.

### Set up

To install, all you need to do is run `bootstrap.sh` remotely. It will install some pre-requisites (gcc,
[Homebrew](http://brew.sh/), git, and [Ansible](http://docs.ansible.com/)) and will then clone this repo locally (by default it clones into `~/.setup`) and run the playbook:

    $ curl -fsSL https://raw.githubusercontent.com/zacs/setup/master/bootstrap.sh | sh

If you prefer not to run code remotely, you just need to clone the repo down wherever you would like, and run:

    $ ./bootstrap.sh

After installing the prerequisites this will run the `local` playbook
for the first time. If for some reason `bootstrap.sh` barfs, you can run the playbook manually via:

    $ ansible-playbook local.yml --become-method=sudo

The `-K` flag means that Ansible will prompt you for your sudo password
before it executes the playbook.

If it's your first time, go brew some coffee or tea because this will
take some time building packages.

### Why?

When planning to replace my previous computer I wanted to make sure I
could replicate the environment. More specifically, only the aspects of
the previous environment that I wanted to keep.

GitHub's Boxen looked great but overkill, and I wanted to learn Ansible,
so here we are.

### Credits

The original inspiration was Michael Griffin's
[ansible-playbooks](https://github.com/MWGriffin/ansible-playbooks)
repository. That collection is far more complete.

I later borrowed some bootstrap scripting from Daniel Jaouen's
blog post, [How I Fully Automated OS X Provisioning With
Ansible](http://il.luminat.us/blog/2014/04/19/how-i-fully-automated-os-x-with-ansible/).

### License

This work is in the public domain.
