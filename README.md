Ada NanoVG bindings
===================

Ada bindings to NanoVG - https://github.com/memononen/nanovg

These bindings aim to provide a lightweight alternative to Cairo/GtkAda for drawing vector graphics. They use the amazing NanoVG library, and are for the moment very thin bindings around it, but aim to provide more idiomatic Ada bindings in time.

Dependencies
------------

You'll need GL ES V2 and GLFW v3 installed on your system. For the moment, the only backend supported is GL ES V2.

You'll also need a relatively recent GNAT toolchain, either GNAT GPL or the FSF version that should be available in the package manager of your distribution.

Building & Installing
---------------------

If you are on a Linux system:

~~~bash
./setup.sh
gprbuild -P ada_nanovg.gpr -XWindowing_System=x11 -XGLFW_Version=3
~~~

You can also build the example similarly:

~~~bash
gprbuild -P example/nanovg_example.gpr -XWindowing_System=x11 -XGLFW_Version=3
~~~
