(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )



;;add whatever packages you want here
(defvar wt/packages '(
				 company
				 monokai-theme
				 hungry-delete
				 swiper
				 counsel
				 smartparens
				 js2-mode
				 nodejs-repl
				 exec-path-from-shell
				 popwin
				 go-translate
				 )  "Default packages")

(setq package-selected-packages wt/packages)

(defun wt/packages-installed-p ()
  (loop for pkg in wt/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (wt/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg wt/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)


;; config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(global-company-mode t)




;;(require 'popwin)    ;;when require, wh(setq company-minimum-prefix-length 1)en not require
;;(popwin-mode t)
(require 'org-tempo)
  (require 'go-translate)
  (setq gts-translate-list '(("en" "zh")))
  (setq gts-default-translator
       (gts-translator
        :picker (gts-prompt-picker)
        :engines (list (gts-google-engine) (gts-google-rpc-engine))
        :render (gts-buffer-render)))

(add-hook 'c-mode-hook 'hungry-delete-mode)
(add-hook 'c-mode-hook 'company-clang)
(provide 'init-packages)
