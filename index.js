const fs = require('fs');
const path = require('path');

const Handlebars = require('handlebars');

const plugin = data => new Promise((resolve, reject) => {

    fs.readFile(path.join(process.cwd(), data.layout), 'utf8', (err, contents) => {

        if (err) {

            return reject(err);

        }

        const template = Handlebars.compile(contents);

        return resolve(template(data));

    });

});

module.exports = plugin;
