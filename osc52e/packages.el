;;; packages.el --- osc52e layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: DESKTOP-L1R0QGB <ray@DESKTOP-L1R0QGB.localdomain>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `osc52e-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `osc52e/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `osc52e/pre-init-PACKAGE' and/or
;;   `osc52e/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst osc52e-packages
  '(
    (osc52e :location local))
  "The list of Lisp packages required by the osc52e layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun osc52e/init-osc52e ()
  (use-package osc52e))

(defun osc52e/post-init-osc52e ()
  ;; (advice-add 'evil-set-register :before #'osc52-copy)
  (osc52-set-cut-function)
  )

;; (defun osc52-copy (register text)
;;   (if (= register 43)
;;       (osc52-select-text-tmux text)))

;;; packages.el ends here
