Persian Letter Connector
=======================

Motivation
----------
This gem is to add support for persian letters to arabic-letter-connector

Acknowledgment
--------------

Special thanx to Arabic-letter-connector (Ahmed Nasser).

Installation
------------

Simply run:

    gem install persian-letter-connector
or in shell 
    gem specific_install -l https://github.com/p1heidary/persian-letter-connector

Then require it with:

    require 'persian-letter-connector'

Usage
-----

The gem provides a `PersianLetterConnector.transform(string)` method, and also monkey-patches `String`
to include a `connect_persian_letters` method.

Below is an example. In the browser, it might appear that this library is doing nothing (since the browser
does the work of converting the characters from their generic form considering their correct form). Try
it in IRB to get a sense of what is happening.

    x = "درود دنیا"
    x[0].unpack("C*")            # [؟؟] 
    y = x.connect_persian_letters # "درود دنیا"
    y[0].unpack("C*")            # [؟؟]

This gem is particular useful if you are using `prawn` to generate PDF files.

    require 'prawn'
    require 'persian-letter-connector'
    Prawn::Document.generate("persian.pdf") do
      text_direction :rtl
      font("/path/to/persian/font.ttf") do 
        text "درود دنیا".connect_persian_letters
      end
    end
