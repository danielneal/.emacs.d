(straight-use-package 'polymode)
(straight-use-package 'poly-markdown)

(define-hostmode poly-clojure-hostmode
  :mode 'clojure-mode)

(define-innermode poly-clojure-html-innermode
  :mode 'html-mode
  :head-matcher "(ui[[:space:]\n]+\""
  :tail-matcher "\\(?:[^\\]\\|^\\)\""
  :head-mode 'host
  :tail-mode 'host)

(define-polymode
  poly-clojure-mode
  :hostmode 'poly-clojure-hostmode
  :innermodes '(poly-clojure-html-innermode))

(add-to-list 'auto-mode-alist '("\\.md" . poly-markdown-mode))
