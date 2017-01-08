

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
(setq exec-path (append exec-path '("/opt/local/bin")))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

(setenv "PATH" (concat (getenv "PATH") ":/Users/patrick/.virtualenv/ENV/bin"))
(setq exec-path (append exec-path '("/Users/patrick/.virtualenv/ENV/bin")))

(setq exec-path (append exec-path '("/Users/patrick/.local/bin/")))

(setenv "WORKON_HOME" "/Users/patrick/.virtualenv/")

(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/dotfiles/emacs/elisp/")

(require 'no-easy-keys)
(no-easy-keys 1)


(load "~/dotfiles/emacs/init_shared.el")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(haskell-process-type (quote stack-ghci))
 '(haskell-stylish-on-save t)
 '(markdown-command "/opt/local/bin/pandoc")
 '(package-selected-packages
   (quote
    (intero flycheck-haskell haskell-mode pdf-tools restclient flycheck-rust rust-mode rustfmt auto-package-update scala-mode paradox markdown-mode magit ensime elpy)))
 '(paradox-github-token t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
