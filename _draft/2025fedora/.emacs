;;hy's emacs @fedora 中文輸入測試！

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
;                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize) ;; You might already have this line


;; general config
;;关闭出错提示声
(setq visible-bell t)
;; 显示行号
(setq column-number-mode t)
(setq line-number-mode t)
;; 显示时间
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time)
;; 关闭启动画面
(setq inhibit-startup-message t)
;;设置大的kill ring
(setq kill-ring-max 150)
;; 去掉工具栏
(tool-bar-mode 0)

(setq make-backup-files 0);不产生备份文件
(global-font-lock-mode t);语法高亮
(auto-image-file-mode t);打开图片显示功能
(fset 'yes-or-no-p 'y-or-n-p);以 y/n代表 yes/no
(column-number-mode t);显示列号
(show-paren-mode t);显示括号匹配
(scroll-bar-mode 0);去掉滚动条
(mouse-avoidance-mode 'animate);光标靠近鼠标指针时，让鼠标指针自动让开
(setq mouse-yank-at-point t);支持中键粘贴
(transient-mark-mode t);允许临时设置标记
(setq x-select-enable-clipboard t);支持emacs和外部程序的粘贴
(setq frame-title-format '("" buffer-file-name "@emacs" ));在标题栏显示buffer名称


;;unicode
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;;auctex
;(load "auctex.el" nil t t)
;(setq TeX-auto-save t)
;(setq TeX-parse-self t)
;(setq-default TeX-master nil)

;;ess R
;(require 'ess-site)

;;markdown
(autoload 'markdown-mode "markdown-mode"
	"Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;fonts
(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")
(add-to-list 'default-frame-alist
          '(font . "Inconsolata-16"))
(if (and (fboundp 'daemonp) (daemonp))
	  (add-hook 'after-make-frame-functions
				(lambda (frame)
				  (with-selected-frame frame
					(set-fontset-font "fontset-default"
									  'unicode "Source Han Serif CN ExtraLight 16"))))
(set-fontset-font "fontset-default" 'unicode "Source Han Serif CN Light 16"))


;;
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil))) 


;;yasnippet
(require 'yasnippet)
(yas-global-mode 1)


;;python
;(require 'elpy)
;(elpy-enable)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)       


;; insert-datetime
(defun insert-datetime ()
  "Insert date at point."
    (interactive)
    (insert (format-time-string "%Y-%m-%d %H:%M:%S")))

(global-set-key (kbd "C-x C-t")  'insert-datetime)

;;capture
(define-key global-map "\C-cc" 'org-capture)
(setq org-capture-templates
      '(
        ("j" "Journal" entry (file+datetree "~/viCjourn/draft/123.org")
         "* %? Entered on %U %i %a")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(solarized-zenburn))
 '(custom-safe-themes
   '("51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773"
     "b49f66a2e1724db880692485a5d5bcb9baf28ed2a3a05c7a799fa091f24321da"
     "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36"
     "7fea145741b3ca719ae45e6533ad1f49b2a43bf199d9afaee5b6135fd9e6f9b8"
     default))
 '(package-selected-packages '(color-theme elpy markdown-mode pandoc solarized-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
