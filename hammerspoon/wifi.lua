ssid = hs.wifi.currentNetwork()

function ssidChangedCallback()
    if (ssid ~= nil) then
        print("ssid = "..(ssid))
        hs.notify.new({title="WiFi", informativeText="Connecting to `"..(ssid).."`"}):send()
    end
end

hs.network.reachability.internet():setCallback(function(self, flags)
  if (flags & hs.network.reachability.flags.reachable) > 0 then
    hs.notify.new({title="WiFi", informativeText="Connected to `"..(ssid).."`"}):send()
  else
    hs.notify.new({title="WiFi - ERR", informativeText="Connection Dropped from `"..(ssid).."`"}):send()
  end
end):start()

wifiWatcher = hs.wifi.watcher.new(ssidChangedCallback)
wifiWatcher:start()

