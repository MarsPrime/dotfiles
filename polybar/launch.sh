#!/usr/bin/env bash

pkill polybar

MONITOR=eDp-1 polybar -c ~/.config/polybar/bars/date-bar.ini date &
MONITOR=eDp-1 polybar -c ~/.config/polybar/bars/workspaces.ini workspaces &
MONITOR=eDp-1 polybar -c ~/.config/polybar/bars/system-tray.ini system-tray &
MONITOR=eDp-1 polybar -c ~/.config/polybar/bars/status-bar.ini status-bar

