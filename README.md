#WhatsAppKit [![Build Status](https://travis-ci.org/fawkeswei/WhatsAppKit.svg?branch=master)](https://travis-ci.org/fawkeswei/WhatsAppKit) [![CocoaPods](https://img.shields.io/cocoapods/v/WhatsAppKit.svg)](https://img.shields.io/cocoapods/v/WhatsAppKit.svg) [![CocoaPods Downloads](https://img.shields.io/cocoapods/dt/WhatsAppKit.svg)](https://img.shields.io/cocoapods/dt/WhatsAppKit.svg) [![Platform](https://img.shields.io/cocoapods/p/WhatsAppKit.svg?style=flat)](http://cocoadocs.org/docsets/WhatsAppKit) [![License](https://img.shields.io/cocoapods/l/WhatsAppKit.svg?style=flat)]()

Launch WhatsApp for iPhone right from your app.

Find WhatsApp for iPhone custom url scheme documentation [here](http://www.whatsapp.com/faq/en/iphone/23559013)


# Usage

Test if WhatsApp for iPhone is installed

	if ([WhatsAppKit isWhatsAppInstalled]) {
		// WhatsApp Installed!
	}
    	
Launch WhatsApp

	[WhatsAppKit launchWhatsAppWithMessage:@"joga bonito"];


See `WhatsAppKit.h` for more convenience methods.

# Install

Two ways to install

1. Drag `WhatsAppKit/` folder to your project.
2. Use [CocoaPods](https://github.com/CocoaPods/CocoaPods)

# License

The MIT License (MIT)

Copyright (c) 2017 Fawkes Wei

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
