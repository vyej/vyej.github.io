;;hy's emacs @mba

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize) ;; You might already have this line




;;啓動最大化
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#93E0E3")
 '(cua-normal-cursor-color "#DCDCCC")
 '(cua-overwrite-cursor-color "#F0DFAF")
 '(cua-read-only-cursor-color "#7F9F7F")
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
    ("13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" default)))
 '(fci-rule-color "#4F4F4F")
 '(highlight-changes-colors (quote ("#DC8CC3" "#bbb0cb")))
 '(highlight-symbol-colors
   (quote
    ("#680f63eb5998" "#54db645064d0" "#6097535f5322" "#5c2859a95fa1" "#4ede55f24ea4" "#64dd5979525e" "#530060d16157")))
 '(highlight-symbol-foreground-color "#FFFFEF")
 '(highlight-tail-colors
   (quote
    (("#4F4F4F" . 0)
     ("#488249" . 20)
     ("#5dacaf" . 30)
     ("#57a2a4" . 50)
     ("#b6a576" . 60)
     ("#ac7b5a" . 70)
     ("#aa5790" . 85)
     ("#4F4F4F" . 100))))
 '(hl-bg-colors
   (quote
    ("#b6a576" "#ac7b5a" "#9f5c5c" "#aa5790" "#85749c" "#57a2a4" "#5dacaf" "#488249")))
 '(hl-fg-colors
   (quote
    ("#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F")))
 '(hl-paren-colors (quote ("#93E0E3" "#F0DFAF" "#8CD0D3" "#bbb0cb" "#7F9F7F")))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(lsp-ui-doc-border "#FFFFEF")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#488249" "#95d291" "#57a2a4" "#93E0E3" "#DC8CC3" "#bbb0cb")))
 '(package-selected-packages
   (quote
    (pandoc-mode ox-jekyll-md elpygen markdown-mode+ pandoc emms htmlize ox-html5slide markdown-mode ess elpy auctex)))
 '(pos-tip-background-color "#4F4F4F")
 '(pos-tip-foreground-color "#FFFFEF")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#7F9F7F" "#4F4F4F" 0.2))
 '(term-default-bg-color "#3F3F3F")
 '(term-default-fg-color "#DCDCCC")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#CC9393")
     (40 . "#df51b97ca1ae")
     (60 . "#e83dcc9aa8b1")
     (80 . "#F0DFAF")
     (100 . "#cadbca369f51")
     (120 . "#b7fbbf79973e")
     (140 . "#a52cb4cc8f3f")
     (160 . "#9260aa2d8754")
     (180 . "#7F9F7F")
     (200 . "#87dbb4dba003")
     (220 . "#8b6ebfadb0a1")
     (240 . "#8e96ca9fc17c")
     (260 . "#914ed5b0d293")
     (280 . "#93E0E3")
     (300 . "#90c5da6cdd6f")
     (320 . "#8f5dd735da39")
     (340 . "#8df4d401d704")
     (360 . "#8CD0D3"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#3F3F3F" "#4F4F4F" "#9f5c5c" "#CC9393" "#488249" "#7F9F7F" "#b6a576" "#F0DFAF" "#57a2a4" "#8CD0D3" "#aa5790" "#DC8CC3" "#5dacaf" "#93E0E3" "#DCDCCC" "#6F6F6F")))
 '(xterm-color-names
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#fffff6"])
 '(xterm-color-names-bright
   ["#3F3F3F" "#DFAF8F" "#878777" "#6F6F6F" "#DCDCCC" "#bbb0cb" "#FFFFEF" "#FFFFFD"]))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; insert-datetime
(defun insert-datetime ()
  "Insert date at point."
    (interactive)
    (insert (format-time-string "%Y-%m-%d %H:%M:%S")))

(global-set-key (kbd "C-x C-t")  'insert-datetime)

;;yasnippet
;(add-to-list 'load-path
;              "~/.emacs.d/lisp/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;fonts
(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")
(set-default-font "Monaco 18")
(if (and (fboundp 'daemonp) (daemonp))
          (add-hook 'after-make-frame-functions
                                (lambda (frame)
                                  (with-selected-frame frame
                                        (set-fontset-font "fontset-default"
                                                                          'unicode "仿宋 18"))))
(set-fontset-font "fontset-default" 'unicode "仿宋 18"))


;;
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;;ess R
(require 'ess-site)
(setq-default inferior-R-program-name "/usr/local/bin/R")
;;markdown
(autoload 'markdown-mode "markdown-mode"
        "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

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
(setq frame-title-format '("" buffer-file-name "@emacs" ));在标题栏显示buffer名>称
;;unicode
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
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

;;elpy
(elpy-enable)
