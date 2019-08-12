;;https://orgmode.org/orgguide.pdf
;(require 'org)
(require 'org-tempo)
(require 'xml-rpc)
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


(setq org-image-actual-width 320)

;;org-download--------------------------
(require 'org-download)
;; Drag-and-drop to `dired`
(add-hook 'dired-mode-hook 'org-download-enable)
(setq-default org-download-image-dir "~/Pictures/Emacs")


;;-------uimage---------------------------------
;https://github.com/lujun9972/uimage
;;use C-c C-c to refresh the images
(require 'uimage)
(uimage-mode t)

;;blog
(require 'org2blog)
(require 'org2blog-autoloads)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; fix "Error during request: 400"

(setq org2blog/wp-blog-alist
      `(("wordpress"
         :url "http://yubaoliu.wordpress.com/xmlrpc.php"
         :username "yubaoliu"
         :password "wordpress@1234"
         :keep-new-lines t
         :confirm t
         :wp-code nil
         :tags-as-categories nil)
        ))


(provide 'init-org)
