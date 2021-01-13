# Makefile for myblog
all: 

#publish: blog.el
#@echo "Publishing... with current Emacs configurations."
	emacs --batch --load blog.el  org-publish-all

#publish_no_init: blog.el
#        @echo "Publishing... with --no-init."
#LANG=zh_EN.UTF-8 emacs --batch --no-init --load blog.el --funcall org-publish-all

clean:
	rm -rvf *.elc
	rm -rvf public
	rm -rvf ~/.org-timestamps/*
