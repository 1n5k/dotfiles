#
# ~/.bash_profile
# 
if [[ -f ~/.bashrc ]]; then
  source .bashrc
else
  echo ".bashrc not found."
fi
