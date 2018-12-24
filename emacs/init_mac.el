(add-to-list 'gnutls-trustfiles "/opt/local/etc/openssl/cert.pem")

(setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
(setq exec-path (append exec-path '("/opt/local/bin")))

(setenv "PATH" (concat (getenv "PATH") ":/Users/patrick/.virtualenv/3.7/bin"))
(setq exec-path (append exec-path '("/Users/patrick/.virtualenv/3.7/bin")))

(setenv "PATH" (concat "/opt/local/libexec/gnubin/:" (getenv "PATH")))
(setq exec-path (append '("/opt/local/libexec/gnubin") exec-path ))

(setenv "WORKON_HOME" "/Users/patrick/.virtualenv/")
