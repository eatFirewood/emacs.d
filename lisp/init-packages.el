(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )

;;add whatever packages you want here
(defvar wt/packages '(
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


;;translate
(require 'go-translate)
(setq gts-translate-list '(("en" "zh")))
(setq gts-default-translator
      (gts-translator
       :picker (gts-prompt-picker)
       :engines (list (gts-google-engine) (gts-google-rpc-engine))
       :render (gts-buffer-render)))

(provide 'init-packages)
