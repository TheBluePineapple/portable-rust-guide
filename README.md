portable-rust-guide
-------------------
  
A guide to creating a portable installation of rust.  This allows you to keep all the files associated with the rust programming language on a normal USB drive(with a little bit of configuration), so that you can program using the language on any computer(currently only tested with windows, batch scripts provided obviously only work on 64 bit windows)  
Feel free to edit this guide, as I only tried enough things to get it working, and I don't know if I did it the most efficient way.
  
1. Find a suitable USB thumbdrive
   + For our purposes you'll want decent read/write speeds
   + at least a few GB
2. Configuring the USB's filesystem for Rust
   + This step is only necessary if your target USB drive is not using the NTFS filesystem already,  it **is** necessary if you have [ExFat, Fat32 or another similar filesystem](https://github.com/rust-lang/rustup/issues/2680)
   + To check what filesystem you are using, just right-click > properties
   + in cmd type ```CONVERT D: /FS:NTFS /NOSECURITY```
3. TODO: currently local, make portable if can (Visual Studio 2019 C++ build tools)
4. Then run [setup.bat](https://github.com/TheBluePineapple/portable-rust-guide/blob/main/setup.bat) to set the environment/path variables
   + Make sure environment variables were set correctly
   + This file can be edited if you have other portable programs running along side rust, like Visual Studio Code, MinGW(if so make sure to choose _x86_64-pc-windows-gnu_ as your host triplet to install in **step 5**), git an X11 server.  Some of the paths for these are commented out in the [setup.bat](https://github.com/TheBluePineapple/portable-rust-guide/blob/main/setup.bat) file, but you should make sure that they are correct before running
5. [Get the rust installer](https://www.rust-lang.org/tools/install)
   + I chose custom installation(2), then only set update path variable to no
   + You could also install a custom toolchain as well
   + WARNING: this took a very long time to get rust on a flashdrive while on windows, If you are willing to sacrifice installing rust-docs [this link](https://github.com/rust-lang/rustup/issues/2444) might be helpful(I didn't do this step)
6. run ```rustup --version```
   + if you don't see numbers, try running [setup.bat](https://github.com/TheBluePineapple/portable-rust-guide/blob/main/setup.bat) and double check that all your environment variables are correct
   + 
