(vertico-mode t)
(setq completion-styles '(orderless))
(add-hook 'after-init-hook 'global-company-mode)
(setq TeX-view-program-list '(("Okular" "okular --unique %o#src:%n%b")))
(setq TeX-view-program-selection '((output-pdf "Okular")))

(eval-after-load "tex"
  '(add-to-list 'TeX-command-list
		'("XeLaTeX" "%'xelatex%(mode)%' %t" TeX-run-TeX nil t)
		))



(provide 'pkg_config)
