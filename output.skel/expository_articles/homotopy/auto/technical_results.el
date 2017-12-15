(TeX-add-style-hook
 "technical_results"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt" "notitlepage")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("babel" "english") ("tocbibind" "nottoc") ("geometry" "left=3cm" "right=3cm" "top=2cm" "bottom=2cm")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "inputenc"
    "graphicx"
    "babel"
    "tocbibind"
    "hyperref"
    "geometry"
    "bbm"
    "amsmath"
    "amsthm"
    "amsfonts"
    "amssymb"
    "mathtools"
    "tikz-cd"
    "xcolor"
    "gentium"
    "todonotes")
   (TeX-add-symbols
    '("cat" 1)
    "cohomtheorie"
    "calz"
    "redco"
    "dv"
    "coker"
    "colim")
   (LaTeX-add-labels
    "sec:hom-exc-theor"
    "sec:stat-proof-excis"
    "eq:1"
    "eq:2"
    "eq:3"
    "sec:coroll-excis-theor"
    "sec:freud-susp-theor"
    "sec:stable-homotopy"
    "sec:comp-theor-cohom"
    "sec:browns-repr-theor"
    "sec:spectra-cohom-theor"
    "sec:proof-browns-repr"
    "sec:definitions-notation"
    "sec:some-useful-lemmas"
    "thm-lim1"
    "thm-milnor")
   (LaTeX-add-bibliographies
    "references")
   (LaTeX-add-amsthm-newtheorems
    "thm"
    "lem"
    "prop"
    "cor"
    "conj"
    "exmp"
    "remark"
    "defn"))
 :latex)

