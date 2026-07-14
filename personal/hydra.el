(straight-use-package 'hydra)

(defhydra hydra-cider (:hint nil)
  "
^Loading^                     ^Deps^                   ^Help^    
-----------------------------------------------------------------------
_s_: cider-jack-in-sqa        _d_: cider-sync-deps     _p_ open-portal
_c_: cider-jack-in-sqa-common                        _b_ debug-fn
_r_: cider-reload-sqa                                _h_ cider-doc
_t_: cider-reset-sqa                                 _x_ cider-xref-fn-refs
_g_: cider-start-sqa"
    ("c" cider-jack-in-sqa-common :exit t)
    ("s" cider-jack-in-sqa :exit t)
    ("r" cider-reload-sqa :exit t)
    ("t" cider-reset-sqa :exit t)
    ("g" cider-start-sqa :exit t)
    ("p" open-portal :exit t)
    ("d" cider-sync-deps :exit t)
    ("b" cider-debug-defun-at-point :exit t)
    ("h" cider-doc :exit t)
    ("x" cider-xref-fn-refs :exit t))


(defhydra hydra-git (:hint nil)
  "
^Git^                     
-------------------------------------------
_t_: git-timemachine
_v_: git-gutter:reverse-hunk"
    ("t" git-timemachine)
    ("v" git-gutter:revert-hunk))

(defhydra hydra-narrow (:hint nil)
  "
^Narrow^                     
-------------------------------------------
_n_: narrow-to-defun
_w_: widen
_i_: narrow-to-defun-indirect"
    ("n" narrow-to-defun :exit t)
    ("w" widen :exit t)
    ("i" ni-narrow-to-defun-indirect-other-window :exit t))


