;; Download evil from:  https://github.com/emacs-evil/evil
(add-to-list 'load-path "~/.emacs.d/packages/evil")
(require 'evil)

;(evil-set-initial-state 'dired-mode 'emacs)
;(define-key evil-emacs-state-map [escape] 'evil-normal-state)
(evil-mode t)

;;; esc quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

(set 'evil-disable-insert-state-bindings t)
;; remove all keybindings from insert-state keymap
(setcdr evil-insert-state-map nil)

(define-key evil-insert-state-map "\C-e" 'end-of-line)
(define-key evil-normal-state-map "\C-e" 'end-of-line)
(define-key evil-visual-state-map "\C-e" 'end-of-line)

(define-key evil-normal-state-map "\C-r" 'search-backward)
(define-key evil-insert-state-map "\C-r" 'search-backward)
(define-key evil-visual-state-map "\C-r" 'search-backward)

(define-key evil-normal-state-map "\C-n" 'next-line)
(define-key evil-insert-state-map "\C-n" 'next-line)
(define-key evil-visual-state-map "\C-n" 'next-line)


(define-key evil-normal-state-map "\C-p" 'previous-line)
(define-key evil-insert-state-map "\C-p" 'previous-line)
(define-key evil-visual-state-map "\C-p" 'previous-line)

(define-key evil-normal-state-map "\C-k" 'kill-line)
(define-key evil-insert-state-map "\C-k" 'kill-line)
(define-key evil-visual-state-map "\C-k" 'kill-line)


(global-evil-tabs-mode t)

(require 'evil-search-highlight-persist)
(global-evil-search-highlight-persist t)


(provide 'init-evil)

