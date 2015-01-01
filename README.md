# HandyBot 2

This is a reimplementation of
[HandyBot](https://github.com/Wilfred/HandyBot) on the Hubot
framework. Unlike the original HandyBot, this bot has battle-tested
IRC code, pluggable backends (including a local test backend) and
Redis persistence.

## Installation

    $ sudo pacman -S redis
    $ sudo systemctl start redis
    $ git clone git@github.com:Wilfred/HandyBot2.git
    $ cd HandyBot2
    $ npm install .

On Ubuntu, you will need to install `libicu-dev` in order for
stringprep to build correctly and
[POSIX semaphores must work](http://stackoverflow.com/a/2009505).

### Testing Hubot Locally

You can test your hubot by running the following.

    % bin/hubot

You'll see some start up output about where your scripts come from and a
prompt.

    [Sun, 04 Dec 2011 18:41:11 GMT] INFO Loading adapter shell
    [Sun, 04 Dec 2011 18:41:11 GMT] INFO Loading scripts from /home/tomb/Development/hubot/scripts
    [Sun, 04 Dec 2011 18:41:11 GMT] INFO Loading scripts from /home/tomb/Development/hubot/src/scripts
    Hubot>

Then you can interact with hubot by typing, e.g. `hubot help`.

    Hubot> hubot help
