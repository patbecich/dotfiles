

(setq load-prefer-newer t)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq use-package-always-ensure t)


(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)


(use-package auto-package-update)
(auto-package-update-maybe)
(auto-package-update-at-time "00:00")
(setq auto-package-update-interval 1)
(setq auto-package-update-delete-old-versions t)
(setq auto-package-update-hide-results t)


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

;; (use-package auctex)
(use-package auctex-latexmk)
(use-package auto-package-update)
(use-package company-irony)
(use-package company-irony-c-headers)
(use-package company-rtags)
(use-package elscreen)
(use-package highlight-thing)
(use-package intero)
(use-package irony)
(use-package irony-eldoc)
(use-package js2-mode)
(use-package pdf-tools)
(use-package rainbow-delimiters)
(use-package rustfmt)
(use-package smartparens)
(use-package wakatime-mode)
(use-package ws-butler)
(use-package yaml-mode)
(use-package magit)

(require 'tls)


(require 'no-easy-keys)


(elscreen-start)


(no-easy-keys 1)




(add-hook 'after-init-hook 'global-company-mode)



(eval-when-compile
  (require 'use-package))


(add-hook 'prog-mode-hook #'ws-butler-mode)


(add-hook 'LaTeX-mode-hook '(flyspell-mode t))

(load "~/dotfiles/emacs/init_shared.el")
(load "~/dotfiles/emacs/init_private.el")

(global-wakatime-mode)
(global-flycheck-mode)

(require 'highlight-thing)
(add-hook 'prog-mode-hook 'highlight-thing-mode)

(setq highlight-thing-exclude-thing-under-point t)
(setq highlight-thing-case-sensitive-p t)



(desktop-save-mode 1)



;; (setq erc-autojoin-channels-alist
;;       '(("freenode.net" "#haskell-beginners" "#haskell" "#emacs" "##javascript" "#scala" "#scalaz" "#web" "#postgresql")))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'haskell-mode-hook 'intero-mode)


(load "~/dotfiles/emacs/areas/c.el")


(require 'smartparens-config)
(add-hook 'prog-mode-hook #'smartparens-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(auto-revert-verbose nil)
 '(custom-enabled-themes (quote (tango-dark)))
 '(erc-hide-list (quote ("JOIN" "PART" "QUIT")))
 '(erc-join-buffer (quote bury))
 '(erc-notifications-mode t)
 '(erc-track-position-in-mode-line t)
 '(haskell-process-type (quote stack-ghci))
 '(haskell-stylish-on-save t)
 '(markdown-command "/opt/local/bin/pandoc")
 '(package-selected-packages
   (quote
    (auctex auto-compile highlight-thing smartparens elscreen company-c-headers ws-butler rainbow-delimiters irony-eldoc company-rtags company-irony-c-headers company-irony use-package ess-smart-underscore ess irony js2-mode pdf-tools auctex-latexmk latex-extra yaml-mode erc-colorize wakatime-mode haskell-snippets intero flycheck-haskell haskell-mode restclient flycheck-rust rust-mode rustfmt auto-package-update scala-mode paradox markdown-mode magit ensime elpy)))
 '(paradox-github-token t)
 '(python-shell-interpreter "/Users/patrick/.virtualenv/ENV/bin/python3.6")
 '(tool-bar-mode nil)
 '(wakatime-python-bin nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
