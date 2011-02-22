
ENVY
=================

Envy allows you to use namespaced environment variables, simply by defining environment variables with a common prefix.

For instance, let's say you have:

<pre>
<code>
	
EC2_ACCESS_KEY='abcdefg'

EC2_SECRET_KEY='0123456789'

CAMPFIRE_API_TOKEN='zyxwvutsr'

CAMPFIRE_SUBDOMAIN='SOULCOMPRANCER'

</code>
</pre>

Envy lets you do...

<pre>
<code>

require 'envy'

Envy.namespace(:ec2, :campfire)

puts CAMPFIRE

# {:api_token => 'zyxwvutsr', :subdomain => 'SOULCOMPRANCER'}

puts Envy::EC2[:access_key]  

# 'abcdefg'


</code>
</pre>

Envy will try to define a global constant (EC2), but will also always define a constant within the Envy module (Envy::EC2), in case some sort of conflict prevents the global constant from working properly.

