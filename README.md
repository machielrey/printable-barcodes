# Enrollment Barcodes

This is a script that generates a printable HTML page of Journey enrollment barcodes,
using the Journey API.

## Requirements

Ruby 1.9 or higher.

## Installation

Clone this repository, then run `bundle install`.

## Usage

You need API credentials for the account to use this script.

Run:

    URL=https://account:key@app-testing.embarkmobile.com bundle exec ruby barcodes.rb

The above script will generate a file `barcodes.html`. You can use your browser to generate
a PDF from this.
