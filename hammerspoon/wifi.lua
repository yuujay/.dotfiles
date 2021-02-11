HOME_WIFI = 'Nest Up'

-- Internet connectivity checker
hs.network.reachability.internet():setCallback(function(self, flags)
  local currentWiFi = hs.wifi.currentNetwork()
  if (flags & hs.network.reachability.flags.reachable) > 0 then
    -- hs.notify.new({title='WiFi', informativeText='Connected to `'..(currentWiFi)..'`'}):send()
  else
    hs.notify.new({title='WiFi - ERR', informativeText='Connection Dropped from `'..(currentWiFi)..'`'}):send()
  end
end):start()

function muteOutputDevice(name)
  hs.audiodevice.findDeviceByName(name):setOutputMuted(true)
end
