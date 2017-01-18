(package-initialize)

(setq inhibit-startup-message t)
(setq default-directory "~/")

(defalias 'yes-or-no-p 'y-or-n-p)
(setq-default indent-tabs-mode nil)

(global-linum-mode)
(blink-cursor-mode 0)

;;File configuration
(setq create-lockfiles nil)


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
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages
   (quote
    (cider alchemist tagedit solarized-theme smex rainbow-delimiters projectile paredit neotree magit ido-ubiquitous helm company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
