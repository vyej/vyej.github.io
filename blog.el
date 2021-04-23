;;blog.el for blog-publish @emacs-org
(require 'package)
;(require 'htmlize)
(require 'org)
(require 'ox-html)
(require 'ox-publish)
(setq org-publish-project-alist
      '(
	("posts"
	 :base-directory "~/vyej.github.io/orgs/"
	 :base-extension "org"
	 :publishing-directory "~/vyej.github.io/org2html/"
 	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :headline-levels 5             
	 :auto-preamble t
  	)

	 ("static"
	  :base-directory "~/vyej.github.io/orgs/"
	  :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
	  :publishing-directory "~/vyej.github.io/org2html/"
	  :recursive t
	  :publishing-function org-publish-attachment
	 )

	("blog" :components ("posts" "static"))

	))

(add-to-list 'org-html-mathjax-options '(path "https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML"))
;(org-html-head-extra "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />")

(org-publish-project "blog")
