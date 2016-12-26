(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   '("elpy" . "https://jorgenschaefer.github.io/packages/")
   )
  (package-initialize))

(elpy-enable)

(desktop-save-mode 0)

;;(pdf-tools-install)

(require 'pdf-tools)

(add-hook 'comint-output-filter-functions 'comint-truncate-buffer)


;; (setq elpy-rpc-python-command "/Users/patrick/.virtualenv/ENV/bin/python")

;; (defvar my:virtualenv-directory "/Users/patrick/.virtualenv/"
;;   "The directory of virtualenvs.")

;; (defun my:configure-python-venv ()
;;   "Set `python-shell-virtualenv-path' to the virtualenv directory."
;;   (interactive)
;;   (require 'projectile)
;;   (let* ((project-name (projectile-project-name))
;;          (virtualenv-path
;;           (file-truename
;;            (concat my:virtualenv-directory project-name))))
;;     (when (file-directory-p virtualenv-path)
;;       (setq python-shell-virtualenv-path virtualenv-path))))

;; (defun my:flycheck-python-set-executables ()
;;   "Set flycheck python executables for the current virtualenv."
;;   (let ((exec-path (python-shell-calculate-exec-path)))
;;     (setq-local flycheck-python-pylint-executable (executable-find "pylint"))
;;     (setq-local flycheck-python-flake8-executable (executable-find "flake8"))))

;; (defun my:flycheck-python-setup ()
;;   "Setup flycheck for Python with virtualenvs. "
;;   ;; my:flycheck-python-set-executables uses buffer-local variables
;;   (add-hook 'hack-local-variables-hook #'my:flycheck-python-set-executables
;;             nil 'local))

;; (add-hook 'python-mode-hook #'my:configure-python-venv)
;; (add-hook 'python-mode-hook #'my:flycheck-python-setup)

(global-set-key (kbd "C-c b") 'windmove-left)
(global-set-key (kbd "C-c f") 'windmove-right)
(global-set-key (kbd "C-c p") 'windmove-up)
(global-set-key (kbd "C-c n") 'windmove-down)


(set-default-font "Monospace-16")

(add-hook 'dired-mode-hook 'auto-revert-mode)




(setq ensime-startup-snapshot-notification nil)

;; (setq auto-package-update-interval 3)
;; (setq auto-package-update-delete-old-versions t)
;; (add-hook 'auto-package-update-before-hook
;;           (lambda () (message "I will update packages now")))

(add-hook 'prog-mode-hook 'linum-mode)
(setq linum-format "%d ")

(setq magit-auto-revert-mode 1)
(global-set-key (kbd "C-x g") 'magit-status)

(paradox-upgrade-packages)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)

;; https://github.com/jorgenschaefer/elpy/issues/887
(setq python-shell-prompt-detect-failure-warning nil)


(setq haskell-program-name "/Users/patrick/.stack/programs/x86_64-osx/ghc-8.0.1/bin/ghci")


(setq dired-listing-switches "-alk")

(setq haskell-process-args-stack-ghci '("--ghci-options=-ferror-spans"))



(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

(add-hook 'haskell-mode-hook 'haskell-indent-mode)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
