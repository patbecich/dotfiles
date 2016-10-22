(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   '("elpy" . "https://jorgenschaefer.github.io/packages/")
   )
  (package-initialize))

(elpy-enable)

(desktop-save-mode 1)

;;(pdf-tools-install)

(require 'pdf-tools)

(add-hook 'comint-output-filter-functions 'comint-truncate-buffer)


 (setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
    (setq exec-path (append exec-path '("/opt/local/bin")))

(global-set-key (kbd "C-c b") 'windmove-left)
(global-set-key (kbd "C-c f") 'windmove-right)
(global-set-key (kbd "C-c p") 'windmove-up)
(global-set-key (kbd "C-c n") 'windmove-down)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(markdown-command "/opt/local/bin/pandoc")
 '(package-selected-packages
   (quote
    (auto-package-update scala-mode pdf-tools paradox markdown-mode magit ensime elpy)))
 '(paradox-github-token t)
 '(tool-bar-mode nil))

(setq ensime-startup-snapshot-notification nil)

(setq auto-package-update-interval 3)
(setq auto-package-update-delete-old-versions t)
(add-hook 'auto-package-update-before-hook
          (lambda () (message "I will update packages now")))

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
