;;; init -- emacs initialization

;;; Commentary:
;;
;; MMM configuration

;;; Code:
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)
(mmm-add-classes
 '((embedded-LilyPond
    :submode LilyPond-mode
    :face mmm-declaration-submode-face
    :front "<!\\[CDATA\\["
    :back "\\]\\]>")))

(provide 'init)
;;; init.el ends here
