(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(paredit
    company
    ido-ubiquitous
    smex
    projectile
    helm
    helm-projectile
    neotree
    magit
    avy
    solarized-theme
    exec-path-from-shell
    ;;Elixir
    elixir-mode
    alchemist
    ;;Clojure
    cider
    clojure-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;Magit
(setq magit-completing-read-function 'magit-ido-completing-read)

;;Smex
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;;Ido-Ubiquitous
(ido-ubiquitous-mode 1)

;;Neo-tree
(add-to-list 'load-path "~")
(global-set-key [f8] 'neotree-toggle)
(setq projectile-switch-project-action 'neotree-projectile-action)

;;Projectile
(projectile-mode)

;;Company
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0.1)
(setq company-tooltip-limit 10)
(setq company-tooltip-flip-when-above t)

;;Solarized
(load-theme 'solarized-dark t)

;; exec-path-from-shell-initialize
;; Needed to normalize PATH in OSX
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;;Clojure
(add-hook 'clojure-mode-hook #'paredit-mode)

;;Elixir
(setq alchemist-hooks-compile-on-save t)

;;Needed when using brew
(when (memq window-system '(mac ns x))
  (setq alchemist-mix-command "/usr/local/Cellar/elixir/1.5.1/bin/mix")
  (setq alchemist-iex-command "/usr/local/Cellar/elixir/1.5.1/bin/iex")
  (setq alchemist-execute-command "/usr/local/Cellar/elixir/1.5.1/bin/elixir")
  (setq alchemist-compile-command "/usr/local/Cellar/elixir/1.5.1/bin/elixirrc")
  (setq alchemist-goto-erlang-source-dir "/usr/local/Cellar/erlang/20.0.4/lib")
  (setq alchemist-goto-elixir-source-dir "/usr/local/Cellar/elixir/1.5.1/lib"))
(require 'elixir-mode)
(add-to-list 'elixir-mode-hook 'alchemist-mode)
