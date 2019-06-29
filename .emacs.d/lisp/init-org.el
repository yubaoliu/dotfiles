;https://orgmode.org/orgguide.pdf
;(require 'org)
(require 'org-tempo)

(setq org-startup-with-inline-images t)
(auto-image-file-mode t)
(setq org-startup-indented t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (python . t)
   (ruby . t)
   (dot . t)
   (octave . t)
   (sqlite . t)
   (perl . t)
   (C . t)
   (latex . t)
   ))

(set 'org-startup-with-inline-images t)

;; The following lines are always needed. Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)


(provide 'init-org)
