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
order += "battery 0"
order += "cpu_usage"
order += "load"
order += "time"


battery 0 {
        format = "%status %percentage %remaining"
}

run_watch DHCP {
        pidfile = "/var/run/dhclient*.pid"
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
        format = "Free: %free Total: %total"
}
