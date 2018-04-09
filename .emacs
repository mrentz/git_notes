(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "chartreuse" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "DAMA" :family "Ubuntu Mono")))))

;; Added global line number mode custom
(global-linum-mode t)
(set-face-attribute 'linum nil :height 100)

;; add speedbar
;;(speedbar-frame-mode 1)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))




(add-to-list 'load-path "~/play/emacs/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(add-hook 'neo-change-root-hook
          (lambda () (neo-buffer--with-resizable-window
                 (let ((fit-window-to-buffer-horizontally t))
                   (fit-window-to-buffer)))))
  (defun neotree-resize-window (&rest _args)
    "Resize neotree window.
https://github.com/jaypei/emacs-neotree/pull/110"
    (interactive)
    (neo-buffer--with-resizable-window
     (let ((fit-window-to-buffer-horizontally t))
       (fit-window-to-buffer))))

  (add-hook 'neo-change-root-hook #'neotree-resize-window)
  (add-hook 'neo-enter-hook #'neotree-resize-window)

