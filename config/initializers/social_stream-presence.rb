SocialStream::Presence.setup do |config| 
  #Configures Web Server Domain served by XMPP Server
  config.domain = "localhost"
  #Configures Bosh Service Path
  #config.bosh_service = "http://xmpp-proxy/http-bind"
  #Configures Authentication Method: "cookie" or "password"
  config.auth_method = "cookie"
  #Configures XMPP Server Password
  config.xmpp_server_password = "1440f56455d264964e22d4662762f958"
  #Uncomment to enable REST API Security
  #config.secure_rest_api = true
  #Remote or local mode
  config.remote_xmpp_server = false
  #Scripts path to execute ejabberd scripts: local or remote
  config.scripts_path = "/scripts_path"
  #Ejabberd module path in the xmpp server
  config.ejabberd_module_path = "/usr/lib/ejabberd/ebin"
  #Uncomment to enable Social Stream Presence
  #config.enable = true
  
  #Parameters for remote mode
  #SSH Login
  #config.ssh_domain = "domain"
  #config.ssh_user = "login"
  #Comment to allow SSH authentication with key instead of password
  #config.ssh_password= "password"

  #Configure to use a Xmpp Client on Rails App
  #Username of the the Social Stream Admin sid
  config.social_stream_presence_username = "social_stream-presence"
  #Configures Social Stream Rails App Password
  config.password = "998ad8e8efeab6848da29b65a116477cef3c045e3c9dd3e66c3df2a06ea3ce9c"
  
  #OpenTok settings (Only for videochat)
  #Replace with your OpenTok API key.
  #config.opentok_api_key = ""
  #Replace with your OpenTok API secret.
  #config.opentok_api_secret = ""
  
  #Multiplayer Games Service
  #Uncomment to enable Multiplayer Games Service
  #config.games = true

end