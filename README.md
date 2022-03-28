# Autonomous System's IP Address Subnets Lookup (BASH Script)
Autonomous System's IP Address Subnets Lookup

<h2>Dependencies</h2>
<ol>
  <li><h3>Whois</h3>
    <code>sudo apt -y install whois</code>    
  </li>
</ol>
<h2>Create and Install</h2>
<ol>
  <li>
<p>
Create bash script:<br />
<code>nano asroute.sh</code>
</p>
 </li>
 <li>
<p>
Insert code<br />
<code>
#!/bin/bash
</code><br />
<code>
whois -h whois.radb.net -i origin as$1 | grep route
</code>
</p>
</li>
<li>
  <p>
    Save<br />
    <code>ctrl+o ENTER</code>
  </p>
</li>
<li>
  <p>
  Change the access permissions<br />
    <code>
      sudo chmod +x asroute.sh
    </code>
  </p>
</li>
<li>
  <p>Installation<br />
    <code>
      cp asroute.sh /usr/bin/asroute
    </code>
  </p>
</li>
</ol>
  
<h2>How to use</h2>
<p>
  <b>Command:</b><br />
<code>asroute 36459</code></p>
<p><b>Result:</b><br />
<pre>
<code>
route:      185.199.108.0/22
route:      192.30.252.0/22
route:      140.82.112.0/20
route:      140.82.112.0/24
route:      140.82.113.0/24
route:      140.82.114.0/24
...
...
</code>
</pre>
</p>
