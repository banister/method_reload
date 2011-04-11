method_reload
===========

(C) John Mair (banisterfiend) 2011

_fine grained code reloading_

`method_reload` enables you to reload method code on the fly. It
precisely targets the code of the method - it does not
reload the entire file.

`method_reload` provides the `Method#reload` and
`UnboundMethod#reload` methods.

* Install the [gem](https://rubygems.org/gems/method_reload): `gem install method_reload`
* Read the [documentation](http://rdoc.info/github/banister/method_reload/master/file/README.md)
* See the [source code](http://github.com/banister/method_reload)

Example: Example 
--------

    class Hello
      def hello
        puts "hello world"
      end
    end

    Hello.new.hello #=> "hello world"

    # file edited here and "hello world" changed to "goodbye"
    
    # now we reload
    Hello.instance_method(:hello).reload

    # now we test
    Hello.new.hello #=> "goodbye"
    
Features and limitations
-------------------------

### Features:

* Only reloads the code for the method.
* Works with any kind of method: class methods, instance methods.

### Limitations:

* Updated method definition must start on exactly the same line as the
  original. This limitation will be overcome in a later version.
* Not tested in JRuby with 1.9 support, but should work. Will not work in JRuby
  running Ruby 1.8.
* No tests, coming soon!

  
Contact
-------

Problems or questions contact me at [github](http://github.com/banister)


License
-------

(The MIT License) 

Copyright (c) 2011 John Mair (banisterfiend)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
