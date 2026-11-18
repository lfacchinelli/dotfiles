# Demo dotfiles for testing CDE (Coder) workspaces.

# Keep Ubuntu's default interactive setup (prompt, history, colors).
[ -f /etc/skel/.bashrc ] && . /etc/skel/.bashrc

# Proof that this file was linked: `bash -ic cdetest` prints dotfiles-ok.
alias cdetest='echo dotfiles-ok'
