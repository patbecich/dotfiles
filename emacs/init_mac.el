(require 'package) ;; You might already have this line
(require 'tls)
(require 'gnutls)
(add-to-list 'gnutls-trustfiles "/opt/local/etc/openssl/cert.pem")
(setq tls-checktrust t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))


(setq load-prefer-newer t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq load-prefer-newer t)


(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(auto-revert-verbose nil)
 '(counsel-mode t)
 '(counsel-projectile-mode t nil (counsel-projectile))
 '(counsel-projectile-sort-buffers t)
 '(counsel-projectile-sort-directories t)
 '(counsel-projectile-sort-files t)
 '(counsel-projectile-sort-projects t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(erc-hide-list (quote ("JOIN" "PART" "QUIT")))
 '(erc-join-buffer (quote bury))
 '(erc-notifications-mode t)
 '(erc-track-position-in-mode-line t t)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-git-gutter-mode t)
 '(haskell-process-type (quote stack-ghci))
 '(haskell-stylish-on-save t)
 '(markdown-command "/opt/local/bin/pandoc")
 '(package-selected-packages
   (quote
    (treemacs treemacs-projectile counsel-dash counsel-tramp ivy company-auctex git-gutter-fringe exec-path-from-shell smart-mode-line counsel counsel-etags counsel-projectile git-timemachine swiper nlinum smex flx-ido flycheck-clang-analyzer omnisharp projectile csharp-mode ag auto-compile highlight-thing smartparens elscreen company-c-headers ws-butler rainbow-delimiters irony-eldoc company-rtags company-irony-c-headers company-irony use-package ess-smart-underscore ess irony js2-mode pdf-tools auctex-latexmk latex-extra yaml-mode erc-colorize wakatime-mode haskell-snippets intero flycheck-haskell haskell-mode restclient flycheck-rust rust-mode rustfmt auto-package-update scala-mode paradox markdown-mode magit ensime elpy)))
 '(paradox-github-token t)
 '(pdf-view-display-size (quote fit-page))
 '(projectile-enable-idle-timer t)
 '(projectile-project-root-files
   (quote
    ("rebar.config" "project.clj" "build.boot" "deps.edn" "SConstruct" "pom.xml" "build.sbt" "gradlew" "build.gradle" ".ensime" "Gemfile" "requirements.txt" "setup.py" "tox.ini" "composer.json" "Cargo.toml" "mix.exs" "stack.yaml" "info.rkt" "DESCRIPTION" "TAGS" "GTAGS" "configure.in" "configure.ac" "cscope.out" "Assembly-CSharp.csproj")))
 '(projectile-tags-backend (quote auto))
 '(projectile-tags-command "/opt/local/bin/ctags -Re -f \"%s\" %s \"%s\"")
 '(python-shell-interpreter "/Users/patrick/.virtualenv/3.7/bin/python3")
 '(tool-bar-mode nil)
 '(wakatime-python-bin nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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

(setenv "PATH" (concat (getenv "PATH") ":/Users/patrick/.virtualenv/3.7/bin"))
(setq exec-path (append exec-path '("/Users/patrick/.virtualenv/3.7/bin")))

(setq exec-path (append exec-path '("/Users/patrick/.local/bin/")))

(setenv "PATH" (concat "/opt/local/libexec/gnubin/:" (getenv "PATH")))
(setq exec-path (append '("/opt/local/libexec/gnubin") exec-path ))

(setenv "WORKON_HOME" "/Users/patrick/.virtualenv/")

(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/dotfiles/emacs/elisp/")

(setq use-package-always-ensure t)

(use-package ag :ensure t)
(use-package auctex :ensure t)
(use-package auctex-latexmk :ensure t)
(use-package auto-package-update :ensure t)
(use-package company-auctex :ensure t)
(use-package company-irony :ensure t)
(use-package company-irony-c-headers :ensure t)
(use-package company-rtags :ensure t)
(use-package counsel :ensure t)
(use-package counsel-dash :ensure t)
(use-package counsel-projectile :ensure t)
(use-package counsel-etags :ensure t)
(use-package counsel-tramp :ensure t)
(use-package elpy :ensure t)
(use-package elscreen :ensure t)
(use-package exec-path-from-shell :ensure t)
(use-package flx-ido :ensure t)
(use-package flyspell-correct-ivy :ensure t)
(use-package highlight-thing :ensure t)
(use-package intero :ensure t)
(use-package irony :ensure t)
(use-package irony-eldoc :ensure t)
(use-package ivy :ensure t)
(use-package ivy :ensure t)
(use-package js2-mode :ensure t)
(use-package magit :ensure t)
(use-package magit-popup :ensure t)
(use-package magit-todos :ensure t)
(use-package nlinum :ensure t)
(use-package omnisharp :ensure t)
(use-package pdf-tools :ensure t)
(use-package projectile :ensure t)
(use-package rainbow-delimiters :ensure t)
(use-package smart-mode-line :ensure t)
(use-package smartparens :ensure t)
(use-package swiper :ensure t)
(use-package wakatime-mode :ensure t)
(use-package ws-butler :ensure t)
(use-package yaml-mode :ensure t)

(use-package treemacs
  :ensure t
  :defer t)
(use-package treemacs-projectile
  :after treemacs projectile
  :ensure t
    :init
  (with-eval-after-load 'winum
    (define-key winum-keymap (kbd "M-0") #'treemacs-select-window))
  )

(elscreen-start)


(add-hook 'after-init-hook 'global-company-mode)

(eval-when-compile
  (require 'use-package))



(load "~/dotfiles/emacs/init_private.el")

(global-wakatime-mode)
(global-flycheck-mode)

(require 'highlight-thing)
(add-hook 'prog-mode-hook 'highlight-thing-mode)

(setq highlight-thing-exclude-thing-under-point t)
(setq highlight-thing-case-sensitive-p t)

(desktop-save-mode 1)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'haskell-mode-hook 'intero-mode)

(projectile-global-mode)

(load "~/dotfiles/emacs/areas/c.el")
(load "~/dotfiles/emacs/areas/python.el")
(load "~/dotfiles/emacs/areas/csharp.el")


(require 'smartparens-config)
(add-hook 'prog-mode-hook #'smartparens-mode)

(require 'pdf-tools)

(pdf-tools-install)
(add-hook 'comint-output-filter-functions 'comint-truncate-buffer)
(desktop-save-mode 1)

(set-default-font "Monaco-13")
(add-to-list 'default-frame-alist
	     '(font . "Monaco-13"))

(add-hook 'dired-mode-hook 'auto-revert-mode)


(require 'magit-todos)

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
(setq comint-buffer-maximum-size 16384)

(setq comint-scroll-to-bottom-on-input t)
(setq comint-scroll-to-bottom-on-output t)
(setq comint-move-point-for-output t)



(require 'flx-ido)
;; (ido-mode 1)
;; (ido-everywhere 1)
(flx-ido-mode 1)
;; disable ido faces to see flx highlights.
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

(setq ido-use-filename-at-point 'guess)
(setq ido-create-new-buffer 'always)

(sml/setup)
(setq sml/theme 'dark)
(smart-mode-line-enable)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)




(global-set-key (kbd "C-c b") 'windmove-left)
(global-set-key (kbd "C-c f") 'windmove-right)
(global-set-key (kbd "C-c p") 'windmove-up)
(global-set-key (kbd "C-c n") 'windmove-down)

(setq gc-cons-threshold (eval-when-compile (* 1024 1024 1024)))
(run-with-idle-timer 2 t (lambda () (garbage-collect)))

(add-hook 'prog-mode-hook 'nlinum-mode)

(require 'git-gutter-fringe)
(setq global-git-commit-mode t)

(add-hook 'prog-mode-hook #'ws-butler-mode)

;; (add-hook 'LaTeX-mode-hook '(flyspell-mode t))
(add-hook 'TeX-mode-hook 'flyspell-mode); Enable Flyspell mode for TeX modes such as AUCTeX. Highlights all misspelled words.

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

