(setenv "WORKON_HOME" "/home/patbecich/.virtualenv/")

(setenv "PATH" (concat (getenv "PATH") ":/home/patbecich/.virtualenv/env/bin"))
(setq exec-path (append exec-path '("/home/patbecich/.virtualenv/env/bin")))


(load "~/dotfiles/emacs/init_shared.el")
