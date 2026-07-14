(use-package clojure-mode
  :config
  (require 'flycheck-clj-kondo)
  (add-hook 'clojure-mode-hook
            (lambda ()
              (show-paren-mode t)
	      (clj-refactor-mode t)
	      (paredit-mode)
	      (imenu-add-menubar-index)
              (setq clojure-indent-style 'always-align
		    tab-always-indent 'complete
		    cider-test-fail-fast t
		    cider-print-fn 'puget
		    cider-test-show-report-on-success t
		    cider-print-quota (* 1024 512) ; 512kb
		    cider-log-max-message-length nil
		    cider-pprint-options '(("width" 120))
		    cider-preferred-build-tool 'clojure-cli
		    cider-jack-in-default 'clojure-cli
		    cider-eldoc-display-for-symbol-at-point t
		    eldoc-echo-area-use-multiline-p t
		    cider-format-code-options '(:cljfmt {:indents {helix.hooks/use-effect [[:inner 0]]
							next.jdbc/on-connection [[:block 1]]
							promesa.core/let [[:block 1]]
							sqa.test-util/in-the-future [[:block 1]]
							sqa.regression-test/in! [[:block 1]]
							promesa.core/plet [[:block 1]]
							mfor [[:block 1]]}
							:alias-map {"hooks" "helix.hooks"
							"jdbc" "next.jdbc"
							"p" "promesa.core"
							"util" "sqa.test-util"}
							:sort-ns-references? true}))
	      
	      (prism-mode)
	      
              (set-face-attribute 'cider-debug-prompt-face nil
                                  :foreground "#FF00FF")
              (set-face-attribute 'cider-debug-code-overlay-face nil
                                  :background "#FFFF00"
                                  :foreground "#000000")))

  (add-hook 'cider-repl-mode-hook
            (lambda ()
	      (prism-mode)
	      (paredit-mode)))
  
  (add-hook 'cider-inspector-mode-hook
	    (lambda ()
	      (setq truncate-lines t)))

  (add-hook 'cider-mode-hook #'eldoc-box-hover-at-point-mode)
  (add-hook 'before-save-hook 'cider-format-buffer t t)
  (add-to-list 'auto-mode-alist '("\\.cljd\\'" . clojure-mode)))



;; I keep all my clojure and cider related settings here
(use-package cider
  :straight (cider :type git
		   :host github
		   :repo "clojure-emacs/cider"
		   :tag "v1.18.0"
		   :no-byte-compile t))

(use-package clj-refactor)

(setq cider-format-code-options
      '(("extra-indents"
         (("helix.hooks/use-effect" (("inner" 0)))
          ("next.jdbc/on-connection" (("block" 1)))
          ("promesa.core/let" (("block" 1)))
          ("sqa.test-util/in-the-future" (("block" 1)))
          ("sqa.regression-test/in!" (("block" 1)))
          ("promesa.core/plet" (("block" 1)))
          ("mfor" (("block" 1)))))
        ("alias-map"
         (("hooks" "helix.hooks")
          ("jdbc"  "next.jdbc")
          ("p"     "promesa.core")
          ("util"  "sqa.test-util")))
        ("sort-ns-references" t)))




