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
(load-file "~/.emacs.d/keyboard.el")
