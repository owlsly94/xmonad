Config { 

   -- appearance
     font               = "Iosevka Nerd Font Bold 11"
   , bgColor            = "#1e1e2e"
   , fgColor            = "#cdd6f4"
   , position           = Static{xpos = 0, ypos = 0, width = 1600, height = 30 }
   , border             = FullB
   , borderColor        = "#313244"

   -- layout
   , sepChar            = "%" -- delineator between plugin names and straight text
   , alignSep           = "}{" -- separator between left-right alignment
   , template           = " <icon=xmonad.xpm/>  %UnsafeStdinReader% }{  %thermal0%  %memory%  %cpu%  <fc=#a6e3a1>%volume%</fc>  <fc=#f9e2af>%pacupdate%</fc>  %date%  "

   -- general behavior
   , lowerOnStart       = True    -- send to bottom of window stack on start
   , hideOnStart        = False   -- start with window unmapped (hidden)
   , allDesktops        = True    -- show on all desktops
   , overrideRedirect   = True    -- set the Override Redirect flag (Xlib)
   , pickBroadest       = False   -- choose widest display (multi-monitor)
   , persistent         = True    -- enable/disable hiding (True = disabled)
   , iconRoot           = "/home/stefan/.xmonad/icons"

   -- plugins

   , commands = 

        -- CPU Usage
        [ Run Cpu ["-t", "<fc=#74c7ec><fn=1> </fn> <total>%</fc>"] 20

        -- Thermal zone
        , Run ThermalZone 0 ["-t","<fc=#cba6f7><fn=1></fn> <temp>°C</fc>"] 30
                          
        -- memory usage monitor
        , Run Memory         ["-t","<fc=#89b4fa><fn=1>  </fn><used>Mb</fc>"] 10

        -- time and date indicator 
        --   (%F = y-m-d date, %a = day of week, %T = h:m:s time)
        , Run Date           "<fc=#fab387><fn=1> </fn> %H:%M  </fc><fc=#f38ba8><fn=1> </fn> %a, %d %b %Y</fc>" "date" 10

        -- Check for updates
        , Run Com ".xmonad/scripts/pacupdate.sh" [] "pacupdate" 3600

        -- Check for volume
        , Run Com ".xmonad/scripts/volume.sh" [] "volume" 20

        , Run UnsafeStdinReader

        ]
   }
    
