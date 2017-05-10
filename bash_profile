
##https://github.com/politza/pdf-tools#compiling-on-os-x
export PKG_CONFIG_PATH=/opt/local/lib/pkgconfig

export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/

export PATH=$PATH:/usr/local/bin

export PATH=/opt/local/bin:$PATH

# alias pip="/opt/local/bin/pip-2.7"

##
# Your previous /Users/patrick/.bash_profile file was backed up as /Users/patrick/.bash_profile.macports-saved_2016-10-09_at_15:31:18
##

# MacPorts Installer addition on 2016-10-09_at_15:31:18: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/Users/patrick/.local/bin":$PATH
export PATH="~/.cabal/bin":$PATH

export PATH=$PATH:"/opt/local/lib/postgresql96/bin/"

##
# Your previous /Users/patrick/.bash_profile file was backed up as /Users/patrick/.bash_profile.macports-saved_2016-10-18_at_21:26:46
##

# MacPorts Installer addition on 2016-10-18_at_21:26:46: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=/Users/patrick/.virtualenv/ENV/bin/:$PATH

alias callisto="ssh patbecich@callisto.local"

#alias amazon="ssh -i ~/.ssh/PatrickMacMini.pem ubuntu@ec2-54-70-213-122.us-west-2.compute.amazonaws.com"

eval "$(pyenv init -)"
