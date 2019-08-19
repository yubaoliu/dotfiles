(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(image-load-path
   (quote
	("/usr/share/emacs/26.2/etc/images/" data-directory load-path "images")))
 '(org-babel-load-languages
   (quote
	((python . t)
	 (ruby . t)
	 (dot . t)
	 (octave . t)
	 (sqlite . t)
	 (perl . t)
	 (C . t)
	 (latex . t)
	 (matlab . t)
	 (emacs-lisp . t)
	 (R . t)
	 (shell . t)
	 (lisp . t))))
 '(org-download-image-dir "images")
 '(org-download-image-html-width 320)
 '(org-download-image-latex-width 320)
 '(org-download-image-org-width 320)
 '(org-download-method (quote directory))
 '(org-latex-image-default-height "240")
 '(org-latex-image-default-scale "0.5")
 '(org-latex-image-default-width ".8\\linewidth")
 '(org-publish-project-alist
   (\`
	(("default" :base-directory
	  (\,
	   (org2jekyll-input-directory))
	  :base-extension "org" :publishing-directory
	  (\,
	   (org2jekyll-output-directory))
	  :publishing-function org-html-publish-to-html :headline-levels 4 :section-numbers nil :with-toc nil :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>" :html-preamble t :recursive t :make-index t :html-extension "html" :body-only t)
	 ("post" :base-directory
	  (\,
	   (org2jekyll-input-directory))
	  :base-extension "org" :publishing-directory
	  (\,
	   (org2jekyll-output-directory org2jekyll-jekyll-posts-dir))
	  :publishing-function org-html-publish-to-html :headline-levels 4 :section-numbers nil :with-toc nil :html-head "<link rel=\"stylesheet\" href=\"./css/style.css\" type=\"text/css\"/>" :html-preamble t :recursive t :make-index t :html-extension "html" :body-only t)
	 ("images" :base-directory
	  (\,
	   (org2jekyll-input-directory "img"))
	  :base-extension "jpg\\|gif\\|png" :publishing-directory
	  (\,
	   (org2jekyll-output-directory "img"))
	  :publishing-function org-publish-attachment :recursive t)
	 ("js" :base-directory
	  (\,
	   (org2jekyll-input-directory "js"))
	  :base-extension "js" :publishing-directory
	  (\,
	   (org2jekyll-output-directory "js"))
	  :publishing-function org-publish-attachment :recursive t)
	 ("css" :base-directory
	  (\,
	   (org2jekyll-input-directory "css"))
	  :base-extension "css\\|el" :publishing-directory
	  (\,
	   (org2jekyll-output-directory "css"))
	  :publishing-function org-publish-attachment :recursive t)
	 ("web" :components
	  ("images" "js" "css")))))
 '(org2jekyll-blog-author "Yubao" nil (org2jekyll))
 '(org2jekyll-jekyll-directory (expand-file-name "~/Projects/yubaoliu.github.io/") nil (org2jekyll))
 '(org2jekyll-jekyll-drafts-dir "_drafts/" nil (org2jekyll))
 '(org2jekyll-jekyll-posts-dir "_posts/" nil (org2jekyll))
 '(org2jekyll-source-directory (expand-file-name "~/Projects/blog/") nil (org2jekyll))
 '(tab-width 4))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
