(define-module (engstrand wallpapers)
  #:use-module (guix gexp)
  #:use-module (srfi srfi-1))

;; Find the absolute path to this file.
(define %wallpapers-root-dir
  (find (lambda (path)
          (file-exists? (string-append path "/engstrand/wallpapers.scm")))
        %load-path))

(define-public (get-wallpaper-path wallpaper)
  (string-append %wallpapers-root-dir "/engstrand/wallpapers/" wallpaper))
