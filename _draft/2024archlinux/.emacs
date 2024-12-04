;;hy's emacs @EndeavourOS 中文輸入測試！@#

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
;(add-hook 'python-mode-hook 'jedi:setup)
;(setq jedi:complete-on-dot t)       


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
;	("t" "Todo" entry (file+headline "~/viCjourn/org/gtd.org" "Tasks")
;         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/vyej.github.io/orgs/excerpts.org")
         "* %?\nEntered on %U\n  %i\n  %a")
	("r" "runin" entry (file+headline "~/vyej.github.io/orgs/runin.org")
	 "* %?\nEntered on %U\n  %i\n  %a")))


 (defvar wc-regexp-chinese-char-and-punc
       (rx (category chinese)))
 (defvar wc-regexp-chinese-punc
   "[。，！？；：「」『』（）、【】《》〈〉※—]")
 (defvar wc-regexp-english-word
   "[a-zA-Z0-9-]+")

 (defun wc ()

   (interactive)
   (let* ((v-buffer-string
           (progn
             (if (eq major-mode 'org-mode) ; 去掉 org 文件的 OPTIONS（以#+開頭）
                 (setq v-buffer-string (replace-regexp-in-string "^#\\+.+" ""
                                        (buffer-substring-no-properties (point-min) (point-max))))
               (setq v-buffer-string (buffer-substring-no-properties (point-min) (point-max))))
             (replace-regexp-in-string (format "^ *%s *.+" comment-start) "" v-buffer-string)))
                                         ; 把註解行刪掉（不把註解算進字數）。
          (chinese-char-and-punc 0)
          (chinese-punc 0)
          (english-word 0)
          (chinese-char 0))
     (with-temp-buffer
       (insert v-buffer-string)
       (goto-char (point-min))
       ;; 中文（含標點、片假名）
       (while (re-search-forward wc-regexp-chinese-char-and-punc nil :no-error)
         (setq chinese-char-and-punc (1+ chinese-char-and-punc)))
       ;; 中文標點符號
       (goto-char (point-min))
       (while (re-search-forward wc-regexp-chinese-punc nil :no-error)
         (setq chinese-punc (1+ chinese-punc)))
       ;; 英文字數（不含標點）
       (goto-char (point-min))
       (while (re-search-forward wc-regexp-english-word nil :no-error)
         (setq english-word (1+ english-word))))
     (setq chinese-char (- chinese-char-and-punc chinese-punc))
     (message
      (format "中日文字數（不含標點）：%s
 中日文字數（包含標點）：%s
 英文字數（不含標點）：%s
 =======================
 中英文合計（不含標點）：%s"
              chinese-char chinese-char-and-punc english-word
              (+ chinese-char english-word)))))`
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" default))
 '(package-selected-packages
   '(solarized-theme color-theme-modern color-theme pandoc markdown-mode elpy auctex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(solarized-selenized-dark))
 '(custom-safe-themes
   '("fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" default))
 '(package-selected-packages
   '(solarized-theme color-theme-modern color-theme pandoc markdown-mode elpy auctex)))
