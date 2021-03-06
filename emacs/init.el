(require 'package) ;; You might already have this line
(require 'gnutls)
(setq tls-checktrust t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(setq load-prefer-newer t)
(package-initialize)

(setq load-prefer-newer t)

(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

(if (eq system-type 'darwin)
    (load "~/dotfiles/emacs/init_mac.el")
    )
(if (eq system-type 'gnu/linux)
    (load "~/dotfiles/emacs/init_linux.el")
    )
(if (eq system-type 'windows-nt)
    (load "c:/Users/patbe/dotfiles/emacs/init_windows.el")
    )

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
 '(elpy-rpc-python-command "python3")
 '(erc-hide-list (quote ("JOIN" "PART" "QUIT")))
 '(erc-join-buffer (quote bury))
 '(erc-notifications-mode t)
 '(erc-track-position-in-mode-line t t)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-auto-revert-mode t)
 '(global-git-gutter-mode t)
 '(haskell-process-type (quote stack-ghci))
 '(haskell-stylish-on-save t)
 '(package-selected-packages
   (quote
    (geiser slime indium pipenv zeal-at-point helpful restart-emacs fireplace nov persistent-scratch magit-todos treemacs treemacs-projectile counsel-dash counsel-tramp ivy company-auctex exec-path-from-shell smart-mode-line counsel counsel-etags counsel-projectile swiper nlinum smex flx-ido flycheck-clang-analyzer omnisharp projectile csharp-mode ag auto-compile highlight-thing smartparens elscreen company-c-headers ws-butler rainbow-delimiters irony-eldoc company-rtags company-irony-c-headers company-irony use-package ess-smart-underscore ess irony js2-mode pdf-tools auctex-latexmk latex-extra yaml-mode erc-colorize wakatime-mode haskell-snippets intero flycheck-haskell haskell-mode restclient flycheck-rust rust-mode rustfmt auto-package-update scala-mode paradox markdown-mode magit ensime elpy vterm dockerfile-mode docker-compose-mode docker keychain-environment magit-todos treemacs treemacs-projectile counsel-dash counsel-tramp ivy company-auctex exec-path-from-shell smart-mode-line counsel counsel-etags counsel-projectile swiper nlinum smex flx-ido flycheck-clang-analyzer omnisharp projectile csharp-mode ag auto-compile highlight-thing smartparens elscreen company-c-headers ws-butler rainbow-delimiters irony-eldoc company-rtags company-irony-c-headers company-irony use-package ess-smart-underscore ess irony js2-mode pdf-tools auctex-latexmk latex-extra yaml-mode erc-colorize wakatime-mode haskell-snippets intero flycheck-haskell haskell-mode restclient flycheck-rust rust-mode rustfmt auto-package-update scala-mode paradox markdown-mode magit ensime elpy nov persistent-scratch magit-todos treemacs treemacs-projectile counsel-dash counsel-tramp ivy company-auctex exec-path-from-shell smart-mode-line counsel counsel-etags counsel-projectile swiper nlinum smex flx-ido flycheck-clang-analyzer omnisharp projectile csharp-mode ag auto-compile highlight-thing smartparens elscreen company-c-headers ws-butler rainbow-delimiters irony-eldoc company-rtags company-irony-c-headers company-irony use-package ess-smart-underscore ess irony js2-mode pdf-tools auctex-latexmk latex-extra yaml-mode erc-colorize wakatime-mode haskell-snippets intero flycheck-haskell haskell-mode restclient flycheck-rust rust-mode rustfmt auto-package-update scala-mode paradox markdown-mode magit ensime elpy)))
 '(paradox-github-token t)
 '(pdf-view-display-size (quote fit-page))
 '(projectile-enable-idle-timer nil)
 '(projectile-project-root-files
   (quote
    ("rebar.config" "project.clj" "build.boot" "deps.edn" "SConstruct" "pom.xml" "build.sbt" "gradlew" "build.gradle" ".ensime" "Gemfile" "requirements.txt" "setup.py" "tox.ini" "composer.json" "Cargo.toml" "mix.exs" "stack.yaml" "info.rkt" "DESCRIPTION" "TAGS" "GTAGS" "configure.in" "configure.ac" "cscope.out" "Assembly-CSharp.csproj")))
 '(projectile-tags-backend (quote auto))
 '(python-shell-interpreter "python3")
 '(safe-local-variable-values (quote ((TeX-master . t))))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 158 :width normal)))))

(use-package auto-package-update)
;;(auto-package-update-maybe)
;;(auto-package-update-at-time "00:00")
;;(setq auto-package-update-interval 1)
;;(setq auto-package-update-delete-old-versions t)
;;(setq auto-package-update-hide-results t)

(add-to-list 'load-path "~/.emacs.d/elisp/")
(add-to-list 'load-path "~/dotfiles/emacs/elisp/")

(setq use-package-always-ensure t)

(use-package ag :ensure t)
;;(use-package auctex :ensure t)
;;(use-package auctex-latexmk :ensure t)
(use-package auto-package-update :ensure t)
;;(use-package company-auctex :ensure t)
(use-package company-irony :ensure t)
(use-package company-irony-c-headers :ensure t)
(use-package company-rtags :ensure t)
(use-package counsel :ensure t)
;;(use-package counsel-dash :ensure t)
(use-package counsel-projectile :ensure t)
(use-package counsel-etags :ensure t)
(use-package counsel-tramp :ensure t)
(use-package elpy :ensure t)
(use-package elscreen :ensure t)
(use-package exec-path-from-shell :ensure t)
(use-package flx-ido :ensure t)
(use-package flyspell-correct-ivy :ensure t)
(use-package git-timemachine :ensure t)
(use-package highlight-thing :ensure t)
(use-package intero :ensure t)
(use-package irony :ensure t)
(use-package irony-eldoc :ensure t)
(use-package ivy :ensure t)
(use-package ivy :ensure t)
(use-package js2-mode :ensure t)
(use-package magit :ensure t)
;;(use-package nlinum :ensure t)
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
(use-package indium
  :ensure t
  :hook (((js2-mode typescript-mode) . indium-interaction-mode)))
(use-package git-gutter-fringe :ensure t)
(use-package nov :ensure t)
(use-package pipenv
  :hook (python-mode . pipenv-mode)
  :init
  (setq
   pipenv-projectile-after-switch-function
   #'pipenv-projectile-after-switch-extended))
(use-package persistent-scratch :ensure t)
(use-package restart-emacs :ensure t)
(use-package helpful :ensure t)
(use-package zeal-at-point :ensure t)
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

;; (elscreen-start)

(add-hook 'after-init-hook 'global-company-mode)

(eval-when-compile
  (require 'use-package))

(load "~/dotfiles/emacs/init_private.el")

(setq global-wakatime-mode nil)
(global-flycheck-mode)

(require 'highlight-thing)
(add-hook 'prog-mode-hook 'highlight-thing-mode)
;;(add-hook 'prog-mode-hook 'wakatime-mode)

;; (add-hook 'prog-mode-hook 'wakatime-mode)

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

;;(require 'pdf-tools)

;;(pdf-tools-install)
(add-hook 'comint-output-filter-functions 'comint-truncate-buffer)
(desktop-save-mode 1)

;;(set-default-font "Monaco-13")
;;(add-to-list 'default-frame-alist
;;	     '(font . "Monaco-13"))

(add-hook 'dired-mode-hook 'auto-revert-mode)

(setq magit-auto-revert-mode t)
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

(global-set-key (kbd "C-h f") #'helpful-callable)

(global-set-key (kbd "C-h v") #'helpful-variable)
(global-set-key (kbd "C-h k") #'helpful-key)

(global-set-key (kbd "C-c C-d") #'helpful-at-point)

(global-set-key "\C-cd" 'zeal-at-point)

(setq gc-cons-threshold (eval-when-compile (* 1024 1024 1024)))
(run-with-idle-timer 2 t (lambda () (garbage-collect)))

;; (add-hook 'prog-mode-hook 'linum-mode)
;;(add-hook 'prog-mode-hook 'nlinum-mode)

(add-hook 'prog-mode-hook #'ws-butler-mode)

;; (add-hook 'LaTeX-mode-hook '(flyspell-mode t))
(add-hook 'TeX-mode-hook 'flyspell-mode); Enable Flyspell mode for TeX modes such as AUCTeX. Highlights all misspelled words.

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;;(keychain-refresh-environment)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(persistent-scratch-setup-default)

(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))

(require 'geiser)

(setq geiser-active-implementations '(mit))

(defun geiser-save ()
  (interactive)
  (geiser-repl--write-input-ring))
