#!/usr/bin/env bash

pip3 install httpx pyyaml fire tqdm

cd api
for experiment in summarize-text; do
    for scene in 3 4 5 6; do
        dir=experiments/$experiment/tomsawyer/ch1scene$scene/
        python3 openai_api.py ../$dir/prompt.txt
        mv output* ../$dir/
    done
done
for experiment in expand-text; do
    for scene in 2; do
        dir=experiments/$experiment/tomsawyer/ch1scene$scene/
        python3 openai_api.py ../$dir/prompt.txt
        mv output* ../$dir/
    done
done
cd -
