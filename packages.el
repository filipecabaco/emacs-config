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
    ;;Elixir
    alchemist
    elixir-mode
    ;;Clojure
    cider
    clojure-mode
    ;;Ruby
    enh-ruby-mode
    ;; Docker
    dockerfile-mode
    ;; YAML
    yaml-mode
    ;;Markdown
    markdown-mode
    markdown-preview-mode
    ;;Write
    visual-fill-column
    writeroom-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

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

;;Company
(global-company-mode)
(setq company-idle-delay 0.1)
(setq company-tooltip-limit 10)
(setq company-minimum-prefix-length 2)
(setq company-tooltip-flip-when-above t)

;;Magit
(setq magit-completing-read-function 'magit-ido-completing-read)

;;Clojure
(add-hook 'clojure-mode-hook #'paredit-mode)

;;Projectile
(projectile-mode)

;;Solarized
(load-theme 'solarized-dark t)
