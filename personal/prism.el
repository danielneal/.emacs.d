(straight-use-package 'prism)
(straight-use-package 'color)
(straight-use-package 'rainbow-mode)
(rainbow-mode)

(add-hook
 'prism-mode-hook
 (lambda ()
   (prism-set-colors
     :num 8
     :desaturations '(0)
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
                   "#DDDDDD"))))
