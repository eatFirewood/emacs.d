(global-display-line-numbers-mode 1)
(global-hl-line-mode 1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(add-to-list 'default-frame-alist '(foreground-color . "#f3f9f1"))
(add-to-list 'default-frame-alist '(background-color . "#425066")) ;黛蓝
;(add-to-list 'default-frame-alist '(background-color . "#41555d")) ;黯
(add-to-list 'default-frame-alist '(font . "Hack:50"))

(set 'inhibit-splash-screen t)

(provide 'ui)
