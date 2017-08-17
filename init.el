(package-initialize)

(setq inhibit-startup-message t)
(setq initial-buffer-choice "~/org.org")
(setq default-directory "~/")

(fset 'yes-or-no-p 'y-or-n-p)
(setq-default indent-tabs-mode nil)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(global-auto-revert-mode 1)
(add-to-list 'exec-path "/usr/local/bin")

(global-linum-mode)
(blink-cursor-mode 0)

;;File configuration
(setq create-lockfiles nil)
(setq backup-inhibited t)
(setq auto-save-default nil)

;;Ido
(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-flex-matching t)
(setq ido-auto-merge-work-directories-length -1)

(load-file "~/.emacs.d/packages.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages
   (quote
    (cider alchemist tagedit solarized-theme smex rainbow-delimiters projectile paredit neotree magit ido-ubiquitous helm company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
