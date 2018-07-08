(require 'gnutls)
(add-to-list 'gnutls-trustfiles "/opt/local/etc/openssl/cert.pem")

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))



(package-initialize)



(setq load-prefer-newer t)




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

(setenv "PATH" (concat "/opt/local/libexec/gnubin/:" (getenv "PATH")))
(setq exec-path (append '("/opt/local/libexec/gnubin") exec-path ))

(setenv "WORKON_HOME" "/Users/patrick/.virtualenv/")

(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/dotfiles/emacs/elisp/")

(setq use-package-always-ensure t)

(use-package auctex :ensure t)
(use-package auctex-latexmk :ensure t)
(use-package auto-package-update :ensure t)
(use-package company-irony :ensure t)
(use-package company-irony-c-headers :ensure t)
(use-package company-rtags :ensure t)
(use-package elscreen :ensure t)
(use-package highlight-thing :ensure t)
(use-package intero :ensure t)
(use-package irony :ensure t)
(use-package irony-eldoc :ensure t)
(use-package js2-mode :ensure t)
(use-package pdf-tools :ensure t)
(use-package rainbow-delimiters :ensure t)
;; (use-package rustfmt)
(use-package smartparens :ensure t)
(use-package wakatime-mode :ensure t)
(use-package ws-butler :ensure t)
(use-package yaml-mode :ensure t)
(use-package magit :ensure t)

;; (require 'tls)


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

(projectile-global-mode)

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
    (flx-ido flycheck-clang-analyzer omnisharp projectile csharp-mode ag auto-compile highlight-thing smartparens elscreen company-c-headers ws-butler rainbow-delimiters irony-eldoc company-rtags company-irony-c-headers company-irony use-package ess-smart-underscore ess irony js2-mode pdf-tools auctex-latexmk latex-extra yaml-mode erc-colorize wakatime-mode haskell-snippets intero flycheck-haskell haskell-mode restclient flycheck-rust rust-mode rustfmt auto-package-update scala-mode paradox markdown-mode magit ensime elpy)))
 '(paradox-github-token t)
 '(pdf-view-display-size (quote fit-page))
 '(python-shell-interpreter "/Users/patrick/.virtualenv/ENV/bin/python3.6")
 '(tool-bar-mode nil)
 '(wakatime-python-bin nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'pdf-tools)

(pdf-tools-install)
(add-hook 'comint-output-filter-functions 'comint-truncate-buffer)
(desktop-save-mode 1)

(set-default-font "Monospace-16")

(add-hook 'dired-mode-hook 'auto-revert-mode)

(setq magit-auto-revert-mode 1)
(global-set-key (kbd "C-x g") 'magit-status)

(add-hook 'haskell-mode-hook 'intero-mode)



(defun my/truncate-eshell-buffers ()
  "Truncates all eshell buffers"
  (interactive)
  (save-current-buffer
    (dolist (buffer (buffer-list t))
      (set-buffer buffer)
      (when (eq major-mode 'eshell-mode)
        (eshell-truncate-buffer)))))

(setq my/eshell-truncate-timer
      (run-with-idle-timer 5 t #'my/truncate-eshell-buffers))

(add-hook 'compilation-filter-hook
          'comint-truncate-buffer)
(setq comint-buffer-maximum-size 4096)

(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)

;; (yas-global-mode 1)


;; (add-hook 'prog-mode-hook 'linum-mode)


;; (setq linum-format "%d ")


(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'always)


(setq gc-cons-threshold 20000000)
