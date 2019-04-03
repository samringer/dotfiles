(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(add-to-list 'exec-path "usr/local/bin")

(set-keyboard-coding-system nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages (quote (slime))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Instructions for installing SLIME, SBCL & Quicklisp:
;; https://astraybi.wordpress.com/2015/08/02/how-to-install-slimesbclquicklisp-into-emacs/
(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "/usr/local/bin/sbcl")

;; Increase font size
(set-default-font "Menlo 18")

;; Unbind so we can use hashtags
(global-unset-key (kbd "M-3"))
(global-set-key (kbd "M-3") "#")

;; Evil mode stuff
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(when (eq system-type 'darwin)
  ;; use all the special keys on the mac keyboard					;
  (setq mac-right-command-modifier 'meta))
