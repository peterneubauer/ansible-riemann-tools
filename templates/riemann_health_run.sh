#!/bin/sh
export PATH=$PATH:/usr/local/rvm/gems/ruby-2.1.3/bin/
export GEM_HOME=/usr/local/rvm/gems/ruby-2.1.3
{% if rieman_extra_tags is defined %}
exec riemann-health --host={{ riemann_server }} --port={{ riemann_port }} --tag=riemann-health {{ rieman_extra_tags }}
{% else %}
exec riemann-health --host={{ riemann_server }} --port={{ riemann_port }} --tag=riemann-health
{% endif %}
