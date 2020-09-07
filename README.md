# em, an environment manager for Python virtualenvs

## What's this?

A simple bash function that creates, deletes, activates and deactivates virtualenvs for me.

I don't like typing
    `source path/to/my_virtualenv/bin/activate`

Instead, I just type:
    `em a my_virtualenv`

I also don't like having `bin/`, `lib/` and `pyvenv.cfg` in my project directories, so I keep virtualenvs separated from my code. All virtualenvs are in the `~/.python_envs/` directory. My actual code is in another directory far, far away from that.

### -- You could just use conda, which does this by default

I feel more comfortable using virtualenv.

### -- You could just use `$ANOTHER_TOOL`, which does this but better

Probably.

## How to "install"

Append the contents of em.bash to the end of your .bashrc file. This tool won't work if you don't use bash.

## How to "use"

- `em ls` will list all your environments

- `em mk env_name` creates an environment called env\_name

- `em a env_name` activates the environment called env\_name

- `em d env_name` deactivates the environment called env\_name

- `em rm env_name` deletes the environment called env\_name

## how to "uninstall"

`rm -rf ~/.python_envs/`

This will delete the `~/.python_envs` directory and all its environments

