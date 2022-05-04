;; mylisp
(add-to-list 'load-path (expand-file-name "~/.emacs.d/mylisp"))

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

(require 'my_ui)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)


(electric-pair-mode t)

(vertico-mode t)
(setq completion-styles '(orderless))
(marginalia-mode t)

;;complete
(global-company-mode t)
(setq company-minimum-prefix-length 1)
(setq company-idle-delay 0.5)

;;tab complete
(setq tab-always-indent 'complete)


(set 'inhibit-startup-message t)
(global-display-line-numbers-mode 1)
(menu-bar-mode -1)

(require 'go-translate)
(setq gts-translate-list '(("en" "en")))
(setq gts-default-translator
      (gts-translator
       :picker (gts-prompt-picker)
       :engines (list (gts-google-engine) (gts-google-rpc-engine))
       :render (gts-buffer-render)))

(hl-line-mode t)

(global-set-key (kbd "M-t") 'gts-do-translate)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-;") 'embark-act)
(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "M-s i") 'consult-imenu)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(consult marginalia orderless vertico go-translate)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
