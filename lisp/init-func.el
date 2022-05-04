(defun wt-multichar(arg1 arg2)
  (interactive "P\nM")
  (while (> arg1 0)
    (insert arg2)
    (set 'arg1 (- arg1 1))))



(provide 'init-func)
