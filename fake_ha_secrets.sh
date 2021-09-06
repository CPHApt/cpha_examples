#!/bin/bash

yq() {
  docker run --rm -i -v "${PWD}":/workdir mikefarah/yq "$@"
}

yq eval '... comments=""' secrets.yaml > no_comments.yaml

yq eval 'del( .[] | select(. != "*gmail*") )' no_comments.yaml > e.yaml
yq eval 'del( .[] | select(. != "*http*") )' no_comments.yaml > http.yaml
yq eval 'del( .[] | select(. != "*rtsp*") )' no_comments.yaml >> http.yaml
yq eval 'del( .[] | select(. != "192*") )' no_comments.yaml > ips.yaml
yq eval '.[] = "CPHA_ftw"' no_comments.yaml > fake_pwds.yaml; rm no_comments.yaml


yq eval '.[] = "CPHA@example.com"' e.yaml > emails.yaml; rm e.yaml
yq eval '.[] = "http://clube_portugues_home_assistant.CPHA"' http.yaml > urls.yaml; rm http.yaml
yq eval '.[] = "127.0.0.1"' ips.yaml > ip.yaml; rm ips.yaml


yq eval-all 'select(fileIndex == 0) * select(fileIndex == 1)' emails.yaml urls.yaml > 1.yaml; rm emails.yaml urls.yaml
yq eval-all 'select(fileIndex == 0) * select(fileIndex == 1)' 1.yaml ip.yaml > 2.yaml;rm 1.yaml ip.yaml
yq eval-all 'select(fileIndex == 0) * select(fileIndex == 1)' fake_pwds.yaml 2.yaml > fake_secrets.yaml;rm fake_pwds.yaml 2.yaml
