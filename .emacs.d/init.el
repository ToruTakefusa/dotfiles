;; add load path, recursively
(defun add-to-load-path (&rest paths)
  (let (path)
	(dolist (path paths paths)
	  (let ((default-directory
			  (expand-file-name (concat user-emacs-directory path))))
		(add-to-list 'load-path default-directory)
		(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
			(normal-top-level-add-subdirs-to-load-path))))))

;; add elisp, conf, public_rpos direcotry to load path
(add-to-load-path "elisp" "conf" "public_repos")

;; enable package.el
(require 'package)

;; add Marmalade, MELPA
(add-to-list
 'package-archives
 '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list
 'package-archives
 '("melpa" . "https://melpa.org/packages/"))
(package-initialize);

;; C-h to DEL
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))

;; help
(define-key global-map (kbd "C-x ?") 'help-command)

;; let C-t other window
(define-key global-map (kbd "C-t") 'other-window)

;; set UTF-8
(prefer-coding-system 'utf-8)

;; display column number
(column-number-mode t)
;; display line number
(global-linum-mode t)

;; set tab-width 4
(setq-default tab-width 4)

;; hilight
;;(defface my-hl-line-face
;;  '((((class color) (background dark))
;;     (:background "NavyBlue" t))
;;    (((class color) (background light))
;;     (:background "LightSkyBlue" t))
;;    (t (:bold t)))
;;  "hi-line's my face")
;;(setq hl-line-face 'my-hl-line-face)
;;(global-hl-line-mode t)

;; paren-mode
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)

;; make backup file in Temp dir
(setq backup-directory-alist `((".*".,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*",temporary-file-directory t)))

;; make custom file
(setq custom-file (locate-user-emacs-file "custom.el"))
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

;; auto-complete
(when (require 'auto-complete-config nil t)
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (ac-config-default)
  (setq ac-use-menu-map t)
  (setq ac-ignore-case nil))

;; helm
(require 'helm-config)

(add-hook 'after-init-hook #'global-flycheck-mode)

