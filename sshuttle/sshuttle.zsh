# create tunnels with sshuttle
# shuttle 211  --> Integra 211
# shuttle prod --> Production
if (( $+commands[sshuttle] ))
then
  function shuttle () {
    if [[ $1 = 'prod' ]]
      then
        echo "Connecting $(whoami) to Production"
        from='servername'
        to='###.###.###.###'
    else
      echo "Connecting $(whoami) to Integra $1"
      from="###.###.$1.###"
      to='###.###.###.###/##'
    fi
    cmd="sshuttle -H --dns -r $(whoami)@$from $to"
    $(echo $cmd)
  }
fi

alias killshuttle='sudo killall -HUP mDNSResponder'
