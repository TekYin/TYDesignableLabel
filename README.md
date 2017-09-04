TYDesignableLabel
=======================
[![Build Status](https://travis-ci.org/TekYin/TYDesignableLabel.svg?branch=master)](https://travis-ci.org/TekYin/TYDesignableLabel)
[![Pod Version](https://img.shields.io/cocoapods/v/TYDesignableLabel.svg)](http://cocoadocs.org/docsets/TYDesignableLabel/)
[![Pod Platform](https://img.shields.io/cocoapods/p/TYDesignableLabel.svg)](http://cocoadocs.org/docsets/TYDesignableLabel/)
[![Pod License](https://img.shields.io/cocoapods/l/JVFloatLabeledTextField.svg)](http://jaredverdi.mit-license.org)
[![CocoaPods](https://img.shields.io/cocoapods/dt/TYDesignableLabel.svg)](https://github.com/TekYin/TYDesignableLabel)

`TYDesignableLabel` is created to simplify few task that usually can be achieved with attributed text on **Interface Builder**. 

Due to usage of Autolayout for adjusting the UI, Developer can't check the final result of the UILabel with certain lines and few attribute without changing the text type into attributed label.

--to be expanded--

Getting started via CocoaPods
=============================
```
sudo gem install cocoapods
```

Create a ```Podfile``` in your project directory:
```
pod init
```

Add the following to your ```Podfile``` project's target:
```
pod 'TYDesignableLabel'
```

Then run CocoaPods with ```pod install```.

Finally, include ```TYDesignableLabel.h``` and ```TYDesignableLabel.h``` in your project.

Usage
=====

To implement the libs, change the Custom Class of UIlabel into ```TYDesignableLabel``` and the Designables status will be changed into ```up to date``` when the libs is loaded correctly.

![alt text](http://i.imgur.com/W2HRZbt.png)

And after that check the attribute inspector to view the available customization

![alt text](http://i.imgur.com/UguE9NS.png)
