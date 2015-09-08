#!/bin/sh
export PATH=$PATH:/usr/local/rvm/gems/ruby-2.1.3/bin/
export GEM_HOME=/usr/local/rvm/gems/ruby-2.1.3
{% if rieman_extra_tags is defined %}
exec riemann-net --host={{ riemann_server }} --port={{ riemann_port }} --tag=riemann-net {{ rieman_extra_tags }}
{% else %}
exec riemann-net --host={{ riemann_server }} --port={{ riemann_port }} --tag=riemann-net
{% endif %}
