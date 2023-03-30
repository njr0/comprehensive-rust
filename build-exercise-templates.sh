#!/usr/bin/env bash

set -euxo pipefail

rm -rf exercise-templates/ book/exercises.zip

mkdir exercise-templates
cargo run --bin exerciser src/exercises/bare-metal/compass.md exercise-templates/compass
cargo run --bin exerciser src/exercises/bare-metal/rtc.md exercise-templates/rtc

zip --recurse-paths book/exercises.zip exercise-templates/