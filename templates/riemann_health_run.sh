#!/bin/sh
PATH=$PATH:/usr/local/rvm/gems/ruby-2.1.3/bin/
exec riemann-health --host={{ riemann_server }} --port={{ riemann_port }} --tag=riemann-health