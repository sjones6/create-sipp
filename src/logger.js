const chalk = require('chalk');

const yellow = chalk.yellow,
      red = chalk.red,
      green = chalk.green,
      magenta = chalk.magenta;

module.exports = class Logger {
  constructor(log) {
    this.log = log;
  }

  colorful(msg) {
    this.log(msg);
  }

  notice(msg) {
    this.log(magenta(msg));
  }

  warn(msg) {
    this.log(yellow(msg));
  }

  err(msg) {
    this.log(red(msg));
  }

  ok(msg) {
    this.log(green(msg));
  }

}