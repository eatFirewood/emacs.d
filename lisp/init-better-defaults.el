
(setq ring-bell-function 'ignore)

;(global-auto-revert-mode t)

(global-linum-mode t)

(setq auto-save-default nil)

(recentf-mode 1)			

(setq recentf-max-menu-items 25)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(add-hook 'org-mode-hook 'turn-on-auto-fill)

(add-hook 'c-mode 'turn-off-auto-fill)

(electric-indent-mode t)

(delete-selection-mode t)

(setq split-height-threshold nil)
(setq split-width-threshold 0)

(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64))

(provide 'init-better-defaults)
