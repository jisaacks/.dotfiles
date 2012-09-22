                                                                     
                                                                     
                                                                     
                                             
         RED="\[\033[0;31m\]"
   LIGHT_RED="\[\033[1;31m\]"
      YELLOW="\[\033[0;33m\]"
LIGHT_YELLOW="\[\033[1;33m\]"
       GREEN="\[\033[0;32m\]"
 LIGHT_GREEN="\[\033[1;32m\]"
        BLUE="\[\033[1;34m\]"
  LIGHT_BLUE="\[\033[1;34m\]"
      PURPLE="\[\033[1;35m\]"
LIGHT_PURPLE="\[\033[1;35m\]"
       WHITE="\[\033[1;37m\]"
  LIGHT_GRAY="\[\033[0;37m\]"
  COLOR_NONE="\[\e[0m\]"

function parse_git_branch {

  git rev-parse --git-dir &> /dev/null
  git_status="$(git status 2> /dev/null)"
  branch_pattern="^# On branch ([^${IFS}]*)"
  remote_pattern="# Your branch is (.*) of"
  diverge_pattern="# Your branch and (.*) have diverged"
  if [[ ! ${git_status}} =~ "working directory clean" ]]; then
    state="${LIGHT_RED}ϟ"
  fi
  # add an else if or two here if you want to get more specific
  if [[ ${git_status} =~ ${remote_pattern} ]]; then
    if [[ ${BASH_REMATCH[1]} == "ahead" ]]; then
      remote="${LIGHT_YELLOW}^"
    else
      remote="${LIGHT_YELLOW}v"
    fi
  fi
  if [[ ${git_status} =~ ${diverge_pattern} ]]; then
    remote="${LIGHT_YELLOW}^v"
  fi
  if [[ ${git_status} =~ ${branch_pattern} ]]; then
    branch=${BASH_REMATCH[1]}
    echo " ${branch}${state}${remote}"
  fi
}

function prompt_func() {
    previous_return_value=$?;
    prompt="${TITLEBAR}${LIGHT_BLUE}[${LIGHT_PURPLE}\w${LIGHT_GREEN}$(parse_git_branch)${LIGHT_BLUE}]${COLOR_NONE}"
    if test $previous_return_value -eq 0
    then
        PS1="\[\033[G\]${prompt}${LIGHT_PURPLE}➔${COLOR_NONE} "
    else
        PS1="\[\033[G\]${prompt}${LIGHT_RED}➔${COLOR_NONE} "
    fi
}

PROMPT_COMMAND=prompt_func