(straight-use-package 'hydra)

(defhydra hydra-cider (:hint nil)
  "
^Loading^                     ^Deps^            
-------------------------------------------
_s_: cider-jack-in-sqa        _d_: cider-sync-deps
_f_: cider-jack-in-figwheel   
_r_: cider-reload-sqa         
_t_: cider-reset-sqa 
_g_: cider-start-sqa"
    ("f" cider-jack-in-figwheel)
    ("s" cider-jack-in-sqa)
    ("r" cider-reload-sqa :exit t)
    ("t" cider-reset-sqa :exit t)
    ("g" cider-start-sqa :exit t)
    
    ("d" cider-sync-deps :exit t))



(defhydra hydra-git (:hint nil)
  "
^Git^                     
-------------------------------------------
_t_: git-timemachine
_v_: git-gutter:reverse-hunk"
    ("t" git-timemachine)
    ("v" git-gutter:revert-hunk))


