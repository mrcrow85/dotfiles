;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(defalias 'yes-or-no-p 'y-or-n-p)

(menu-bar-mode -1)

(setq vc-follow-symlinks t)

(add-to-list 'auto-mode-alist '("\\zshrc\\'" . shell-script-mode))

(defvar js-indent-level)
(setq js-indent-level 2)

(defvar solarized-termcolors)
(setq solarized-termcolors 256)
(set-terminal-parameter nil 'background-mode 'dark)
(load-theme 'solarized t)

(defvar linum-format)
(setq linum-format "%3d ")
(global-linum-mode t)

(setq-default indent-tabs-mode nil)

(require 'whitespace)
(global-whitespace-mode)

(require 'company)
(global-company-mode)

(require 'evil)
(evil-mode 1)

(require 'evil-leader)
(evil-leader/set-leader ",")
(global-evil-leader-mode)

(require 'flycheck)
(global-flycheck-mode)

(require 'neotree)
(evil-leader/set-key "n" 'neotree-toggle)
(add-hook
 'neotree-mode-hook
 (lambda()
   (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(require 'projectile)
(setq projectile-completion-system 'grizzl)
(projectile-global-mode)
(evil-leader/set-key "p" 'projectile-find-file)

(add-to-list 'projectile-other-file-alist '("test.ts" "ts"))
(add-to-list 'projectile-other-file-alist '("ts" "test.ts"))

(require 'tide)
(setq typescript-indent-level 2)
(add-hook 'typescript-mode-hook 'tide-setup)

(require 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

(add-hook
 'haskell-mode-hook
 (lambda()
   (add-hook 'before-save-hook 'haskell-mode-stylish-buffer)))

(require 'helm)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)

(require 'powerline)
(powerline-default-theme)

(require 'evil-surround)
(global-evil-surround-mode 1)

(require 'evil-nerd-commenter)
(evilnc-default-hotkeys)

(global-hl-line-mode)

(provide 'init)
;;; init.el ends here
