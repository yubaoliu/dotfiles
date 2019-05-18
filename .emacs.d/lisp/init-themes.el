;;load theme
;(load-theme 'monokai t)

(global-hl-line-mode)

(global-linum-mode t)

(tool-bar-mode -1)

;;full screen
(setq initial-frame-alist (quote ((fullscreen . maximized))))

(setq-default cursor-type 'bar)


(provide 'init-ui)
