(require 'org)
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

(provide 'init-org)
