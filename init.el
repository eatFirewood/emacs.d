;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(add-to-list 'load-path "~/.emacs.d/wt/")

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; add more personal func
;; new init-func.el 

;; (require 'init-func.el)
(require 'init-packages)
(require 'init-ui)
(require 'init-better-defaults)
(require 'init-keybindings)
(require 'org)
(require 'init-func)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))


(load-file custom-file)
















(put 'erase-buffer 'disabled nil)
(put 'upcase-region 'disabled nil)
