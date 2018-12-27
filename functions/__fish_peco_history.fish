function __fish_peco_history
  history --save
  history --merge

  if which fish_uniq_history > /dev/null ^ /dev/null
    eval fish_uniq_history | peco | perl -pe 'chomp if eof' | read -lz result
    and commandline -- $result
    commandline -f repaint
  else
    history -z | peco | perl -pe 'chomp if eof' | read -lz result
    and commandline -- $result
    commandline -f repaint
  end
end
