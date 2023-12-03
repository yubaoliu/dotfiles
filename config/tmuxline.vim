" tmuxlive.vim settings
" #H    Hostname of local host
" #h    Hostname of local host without the domain name
" #F    Current window flag
" #I    Current window index
" #S    Session name
" #W    Current window name
" #(shell-command)  First line of the command's output
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'x'    : ['#{battery_percentage} #{battery_icon}', '#{cpu_percentage} #{cpu_icon}'],
      \'y'    : ['%a', '%R'],
      \'z'    : '#H',
      \'options' : {'status-justify':'left'}}
let g:tmuxline_theme = 'papercolor'

let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

