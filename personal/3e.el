;; I keep my personal settings for 3e here
(defun cider-jack-in-sqa-storm (params)
  (interactive "P")
  (let ((cider-clojure-cli-global-options "-A:dev:profile:logback-off:test:clojurestorm")
	(cider-jack-in-nrepl-middlewares (-concat cider-jack-in-nrepl-middlewares '("flow-storm.nrepl.middleware/wrap-flow-storm"))))
    (cider-jack-in-clj params)))

(defun cider-jack-in-sqa (params)
  (interactive "P")
  (let ((cider-clojure-cli-global-options "-A:dev:test:miracle-save:profile:releases"))
    (cider-jack-in-clj params)))

(defun cider-reload-sqa (params)
  (interactive "P")
  (cider-interactive-eval "(do (in-ns 'user) (refresh))"))

(defun cider-sync-deps (params)
  (interactive "P")
  (cider-interactive-eval "(clojure.repl.deps/sync-deps)"))

(defun cider-reset-sqa (params)
  (interactive "P")
  (cider-interactive-eval "(do (in-ns 'user) (reset))"))

(defun cider-start-sqa (params)
  (interactive "P")
  (setq cider-log-framework-name "Logback")
  (cider-log-show)
  (cider-interactive-eval "(do (in-ns 'user) (user/go))"))

(defun cider-jack-in-figwheel (params)
  (interactive "P")
  (let ((cider-clojure-cli-global-options "-A:sqa-common-cljs:sqa-common-demo:sqa-common-demo-repl"))
    (cider-jack-in-cljs params)))

(setq whitespace-line-column 90)

(defun launch-flow-storm ()
  (cider-interactive-eval
   "(do (require '[flow-storm.api :as fs-api])
        (fs-api/local-connect))"))
