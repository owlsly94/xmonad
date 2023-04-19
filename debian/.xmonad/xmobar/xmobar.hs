Config { overrideRedirect = False
       , font     	= "xft:Iosevka Nerd Font:style=Bold:size=12"
       , bgColor  	= "#1e1e2e"
       , fgColor  	= "#cdd6f4"
       , border	  	= FullB
       , borderColor 	= "#313244"
       , position	= Static{xpos = 0, ypos = 0, width = 1600, height = 30 }
       , iconRoot       = "/home/stefan/.xmonad/icons"
       , commands = [ Run Cpu ["-t", "<fc=#74c7ec><fn=n> </fn> <total>%</fc>"] 10
       		    , Run ThermalZone 0 ["-t","<fc=#cba6f7><fn=n></fn> <temp>°C</fc>"] 30
                    , Run Alsa "default" "Master" [ "--template", "<fc=#a6e3a1><fn=n>󰓃 </fn><volumestatus></fc>", "--suffix", "True", "--", "--on", "" ]
                    , Run Memory         ["-t","<fc=#89b4fa><fn=n>  </fn><used>Mb</fc>"] 10
                    , Run Date           "<fc=#fab387><fn=n> </fn> %H:%M </fc>| <fc=#f38ba8><fn=n> </fn> %a, %d %b %Y</fc>" "date" 10
		    , Run Com ".xmonad/scripts/aptupdate.sh" [] "aptupdate" 3600
                    , Run UnsafeStdinReader
                    ]
       , sepChar  = "%"
       , alignSep = "}{"
       , template = " <icon=xmonad.xpm/>  %UnsafeStdinReader% }{| %thermal0% | %cpu% | %memory% | %alsa:default:Master% | <fc=#f9e2af>%aptupdate%</fc> | %date% "
       }

