(setenv "WORKON_HOME" "/home/patbecich/.virtualenv/")

(setenv "PATH" (concat (getenv "PATH") ":/home/patbecich/.virtualenv/env/bin"))
(setq exec-path (append exec-path '("/home/patbecich/.virtualenv/env/bin")))


(load "~/dotfiles/emacs/init_shared.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
