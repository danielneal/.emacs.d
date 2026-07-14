;; I use prism for a rainbow colored lisp and clojure

(straight-use-package '(prism :host github :repo "alphapapa/prism.el"))

(use-package color
  :straight t)

(use-package rainbow-mode
  :straight t)

(add-hook
 'prism-mode-hook
 (lambda ()
   (prism-set-colors
     :num 24
     :desaturations '(0 10 20)
     :colors '("#FFAAAA"
               "#FFFFAA"
               "#AAFFAA"
               "#AAFFFF"
	       "#AAAAFF"
               "#FFAAFF")
     :comments-fn (lambda (color)
                    "#E6E4D9")
     :strings-fn (lambda (color)
		   "#F2F0E5"))
   (rainbow-mode)))


