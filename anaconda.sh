
# conflict with ROS, refer https://github.com/udacity/RoboND-Python-StarterKit/blob/master/doc/linux_ros_anaconda_warning.md for detail
unset PYTHONPATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/yubao/data/software/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/yubao/data/software/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yubao/data/software/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/yubao/data/software/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

echo "conda env list"
echo "conda create --name tf python=3.6"
echo "conda activate tf"
echo "conda deactivate"

