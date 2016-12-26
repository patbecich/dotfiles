
(setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
(setq exec-path (append exec-path '("/opt/local/bin")))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(setenv "PATH" (concat (getenv "PATH") ":/Users/patrick/.virtualenv/ENV/bin"))
(setq exec-path (append exec-path '("/Users/patrick/.virtualenv/ENV/bin")))

(setenv "WORKON_HOME" "/Users/patrick/.virtualenv/")

(load "~/dotfiles/emacs/init_shared.el")

