function __fish_peco_z -d 'z + peco'
  set -l query (commandline)

  z -l | peco | awk '{ print $2 }' | read recent
  if [ $recent ]
      cd $recent
      commandline -r ''
      commandline -f repaint
  end
end

