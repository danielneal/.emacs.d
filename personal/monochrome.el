(straight-use-package 'quasi-monochrome-theme)
(load-theme 'quasi-monochrome t)

(setq white "#FFFFFF")
(setq gray "#AAAAAA")
(setq black "#000000")

(set-face-attribute 
 'font-lock-doc-face nil
 :foreground white)

(set-face-attribute 
 'font-lock-string-face nil
 :foreground white)

(set-face-attribute 
 'font-lock-comment-face nil
 :foreground gray)

(set-face-attribute
 'mode-line nil
 :overline t
 :background black
 :foreground white
 :height 1
 :box nil)

(set-face-attribute
 'mode-line-inactive nil
 :height 1
 :overline t
 :background black
 :foreground white
 :box nil)
