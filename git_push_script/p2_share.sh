#!/bin/bash

###################################
############ by Sthope ############
###################################

e="git email"
u="git username"
t="git password or token"

### Semantic Version
build='build():';
feat='feat():';
fix='fix():';
perf='perf():';
ci='ci():';
docs='docs():';
refactor='refactor():';
style='style():';
test='test():';

commit_msg_file="commit"

if [[ -f "$commit_msg_file" ]]; then
  if grep -q "*build" "$commit_msg_file"; then
    sed -i "s/*build/$build/" $commit_msg_file
  elif grep -q "*feat" "$commit_msg_file"; then
    sed -i "s/*feat/$feat/" $commit_msg_file
  elif grep -q "*fix" "$commit_msg_file"; then
    sed -i "s/*fix/$fix/" $commit_msg_file
  elif grep -q "*perf" "$commit_msg_file"; then
    sed -i "s/*perf/$perf/" $commit_msg_file
  elif grep -q "*ci" "$commit_msg_file"; then
    sed -i "s/*ci/$ci/" $commit_msg_file
  elif grep -q "*docs" "$commit_msg_file"; then
    sed -i "s/*docs/$docs/" $commit_msg_file
  elif grep -q "*refactor" "$commit_msg_file"; then
    sed -i "s/*refactor/$refactor/" $commit_msg_file
  elif grep -q "*style" "$commit_msg_file"; then
    sed -i "s/*style/$style/" $commit_msg_file
  elif grep -q "*test" "$commit_msg_file"; then
    sed -i "s/*test/$test/" $commit_msg_file
  else echo "else"
  fi
fi

if grep -Fq "email = $e" .git/config
then
    if grep -Fq "url = https://$u:$t@git.$u.dev" .git/config; then
      if [[ -f "$commit_msg_file" ]]; then
        clear
        git add .
        git commit -F "$commit_msg_file"
        git push
        rm $commit_msg_file
      elif [[ "$*" = build* ]]; then
        clear
        git add .
        git commit -m "$(echo "${*/build/$build}")"
        git push
      elif [[ "$*" = feat* ]]; then
        clear
        git add .
        git commit -m "$(echo "${*/feat/$feat}")"
        git push
      elif [[ "$*" = fix* ]]; then
        clear
        git add .
        git commit -m "$(echo "${*/fix/$fix}")"
        git push
      elif [[ "$*" = perf* ]]; then
        clear
        git add .
        git commit -m "$(echo "${*/perf/$perf}")"
        git push
      elif [[ "$*" = ci* ]]; then
        clear
        git add .
        git commit -m "$(echo "${*/ci/$ci}")"
        git push
      elif [[ "$*" = docs* ]]; then
        clear
        git add .
        git commit -m "$(echo "${*/docs/$docs}")"
        git push
      elif [[ "$*" = refactor* ]]; then
        clear
        git add .
        git commit -m "$(echo "${*/refactor/$refactor}")"
        git push
      elif [[ "$*" = style* ]]; then
        clear
        git add .
        git commit -m "$(echo "${*/style/$style}")"
        git push
      elif [[ "$*" = "test "* ]]; then
        clear
        git add .
        git commit -m "$(echo "${*/test/$test}")"
        git push
      else
        echo "something is wrong please check!"
      fi
    else
        echo "remote url not configured correctly, please check!"
    fi
else
    git config --local user.email $e
    p2
fi