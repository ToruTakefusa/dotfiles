;; add ~/.emacs.d/elisp direcotry to load path
(add-to-list 'load-path "~/.emacs.d/elisp/")
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
(defface my-hl-line-face
  '((((class color) (background dark))
     (:background "NavyBlue" t))
    (((class color) (background light))
     (:background "LightSkyBlue" t))
    (t (:bold t)))
  "hi-line's my face")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode t)

;;paren-mode
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)
;;(set-face-background 'show-paren-match-face nil)
;;(set-face-underline-p 'show-paren-match-face "darkgreen")
