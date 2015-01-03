# HandyBot 2

This is a Hubot instance configured to meet my day-to-day development
needs plus a few entertainment options. It's heavily based on
[HandyBot](https://github.com/Wilfred/HandyBot), a homegrown Clojure
IRC bot, but more featureful.

This bot includes some third-party packages, and some third-party
packaages that I've hacked. Bugfixes are pushed upstream, but in some
cases I've removed features, in which case we keep the hacked version.

[![Dependency Status](https://david-dm.org/wilfred/handybot2.svg)](https://david-dm.org/wilfred/handybot2)

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
