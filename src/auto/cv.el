;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "cv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("moderncv" "10pt" "academicicons=false" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("enumitem" "") ("geometry" "margin=0.5in") ("biblatex" "style=verbose" "maxnames=1000") ("fontspec" "")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (TeX-run-style-hooks
    "latex2e"
    "moderncv"
    "moderncv10"
    "inputenc"
    "enumitem"
    "geometry"
    "biblatex"
    "fontspec")
   (LaTeX-add-bibliographies
    "docs"))
 :latex)

