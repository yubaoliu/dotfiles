(require 'org)
(require 'org-ref)
(require 'org-tempo)

(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   (ruby . t)
   (ditaa . t)
   (dot . t)
   (octave . t)
   (sqlite . t)
   (perl . t)
   (C . t)
   ))
;(require 'tempo)

(set 'org-startup-with-inline-images t)

(provide 'init-org)
