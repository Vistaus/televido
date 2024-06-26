# SPDX-FileCopyrightText: d-k-bo <d-k-bo@mailbox.org>
# SPDX-License-Identifier: CC0-1.0

PREFIX := `pwd` + "/.env"
export PATH := PREFIX + "/bin:" + env('PATH')
export XDG_DATA_DIRS := PREFIX + "/share:" + env('XDG_DATA_DIRS')

setup:
    meson setup --prefix={{PREFIX}} -Dprofile=development _build

build:
    meson compile -C _build

run: build
    meson install -C _build
    televido
