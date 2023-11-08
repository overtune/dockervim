FROM alpine

WORKDIR /app

COPY . . 

# Test

RUN apk add bash git zsh lua nodejs npm lazygit python3 neovim alpine-sdk --update --no-cache
RUN git clone --depth 1 https://github.com/AstroNvim/AstroNvim "$HOME/.config/nvim"
RUN git clone https://github.com/overtune/astronvim-config "$HOME/.config/nvim/lua/user" 

RUN nvim +PlugInstall +qall

ENV TERM=xterm-256color
ENV SHELL /bin/zsh
CMD ["zsh"]
