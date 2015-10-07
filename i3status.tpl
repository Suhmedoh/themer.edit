{# this is an "i3" specific file, for configuring my status bar -- goes in .themer/templates/i3status.tpl #}
general {
        colors = true
        interval = 1
        color_good = "{{ green }}"
        color_bad = "{{ red }}"
}

order += "volume master"
order += "disk /"
order += "run_watch DHCP"
order += "wireless wlan0"
order += "ethernet eth0"
order += "battery 0"
order += "cpu_usage"
order += "load"
order += "time"

wireless wlan0 {
        format_up = "W: (%quality at %essid) %ip"
        format_down = "W: down"
}

ethernet eth0 {
        # if you use %speed, i3status requires root privileges
        format_up = "E: %ip (%speed)"
        format_down = "E: down"
}

battery 0 {
        format = "%status %percentage %remaining"
}

run_watch DHCP {
        pidfile = "/var/run/dhclient*.pid"
}

run_watch VPN {
        pidfile = "/var/run/vpnc/pid"
}

time {
        format = "%Y-%m-%d %H:%M:%S"
}

cpu_usage {
        format = "%usage"
}

load {
        format = "%1min %5min"
}

volume master {
        format = "♪: %volume"
        device = "default"
        mixer = "Master"
        mixer_idx = 0
}

disk "/" {
        format = "%free/%total"
}
