export SHELL=$( which zsh )

PROMPT='[Singularity]%1~ %# '

source /opt/ros/$ROS_DISTRO/setup.zsh

# source the user_workspace, if it exists
[ -e ~/singularity_ws/devel/setup.zsh ] && source ~/singularity_ws/devel/setup.zsh

[ -z "$ROS_PORT" ] && export ROS_PORT=11311
[ -z "$ROS_MASTER_URI" ] && export ROS_MASTER_URI=http://localhost:$ROS_PORT

# source the linux setup from within
if [ -e /opt/image/host/addons.sh ]; then
  source /opt/image/host/addons.sh
fi
