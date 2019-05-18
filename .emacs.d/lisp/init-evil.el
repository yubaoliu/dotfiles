;; Download evil from:  https://github.com/emacs-evil/evil
(add-to-list 'load-path "~/.emacs.d/packages/evil")
(require 'evil)
(evil-mode t)
(global-evil-tabs-mode t)

(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)


(provide 'init-evil)

