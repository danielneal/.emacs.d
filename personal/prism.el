(straight-use-package '(prism :host github :repo "alphapapa/prism.el" :branch "fix/26-infinite-loop"))
(straight-use-package 'color)
(straight-use-package 'rainbow-mode)

(add-hook
 'prism-mode-hook
 (lambda ()
   (prism-set-colors
     :num 16
     :desaturations '(0 20)
     :colors '("#BF3F3F"
               "#BF6F3F"
               "#EFEF3F"
               "#6FBF6F"
               "#3FBFBF"
               "#3F6FBF"
               "#6F3FBF"
	       "#BF6F9F")
     :comments-fn (lambda (color)
                    "#BBBBBB")
     :strings-fn (lambda (color)
                   "#DDDDDD"))
   (rainbow-mode)))
