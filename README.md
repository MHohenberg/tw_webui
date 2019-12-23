# twui

Taskwarrior WebUI - a responsive web interface to [taskwarrior](http://taskwarrior.org/) written with [Node.js](http://nodejs.org/).
Based on twui by RampantMonkey

## Installing

    npm install -g twui

## Usage

To start simply type `twwebui` and navigate to `localhost:2718`.

If you want twui to run as a background process use the following:

    twwebui &>/dev/null &

## UI

### Task Summary
![task summary ui](doc/images/task-summary-overview.png)

The task summary contains six indicators for the following attributes of a task.

- Description - the majority of text displayed ("explain the task warrior list status indicators")
- Project - the text displayed in thin caps below the description ("TWUI")
- Tags - text prefixed with a 'tag' image ("documentation")
- Due Date - if the task has a due date 'hands' will appear in the circle to the left of the description (like a clock)
- Recurring - if the task has a second ring it is a recurring task.
- Annotations - if the task has annotations a count will occur to the right of the description ('[2]')
- Priority - indicated by color
    + grey - no priority
    + blue - low priority
    + green - medium priority
    + red - high priority

## Contributing

### Setting up the development environment

0. Install node [http://nodejs.org/](http://nodejs.org/)
1. Clone the repo `git clone https://github.com/rampantmonkey/twui.git`
2. Move to directory `cd twui`
3. Download dependencies (angular.js) `make deploy`
4. Download and install node module dependencies locally `npm install`
5. Start server `bin/twui`

### Updating to most recent version

1. Download latest changes `git pull origin master`
2. Start server `bin/twui`

### Common Issues

#### No such file or directory

    /usr/bin/env: node: No such file or directory

This error occurs when the node executable is not in your `PATH`.
Some linux distributions decided to install the node executable as `nodejs` instead of `node`.
The simple solution is to create a symlink `ln -s /usr/bin/nodejs  /usr/bin/node`.
But for those afraid of the file system a package is available to perform the same action - `apt-get install nodejs-legacy`.

## License
_This software - &copy; Martin Hohenberg 2019, Casey Robinson 2014 - is released under the MIT license._
You can find a copy in [LICENSE.txt](LICENSE.txt) or at [opensource.org](http://opensource.org/licenses/MIT).
# tw_webui
