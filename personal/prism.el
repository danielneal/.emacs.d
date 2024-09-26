(straight-use-package '(prism :host github :repo "alphapapa/prism.el"))
(straight-use-package 'color)
(straight-use-package 'rainbow-mode)

(add-hook
 'prism-mode-hook
 (lambda ()
   (prism-set-colors
     :num 24
     :desaturations '(0 10 20)
     :colors '("#FF8888"
               "#FFFF88"
               "#88FF88"
               "#88FFFF"
	       "#8888FF"
               "#FF88FF")
     :comments-fn (lambda (color)
                    "#AAAAAA")
     :strings-fn (lambda (color)
		   "#FFFFFF"))
   (rainbow-mode)))
