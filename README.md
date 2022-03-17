portable-rust-guide
-------------------
  
A guide to creating a portable installation of rust.  This allows you to keep all the files associated with the rust programming language on a normal USB drive(with a little bit of configuration), so that you can program using the language on any computer(currently only tested with windows, batch scripts provided obviously only work on 64 bit windows)  
  
1. Find a suitable USB thumbdrive
   + For our purposes you'll want decent read/write speeds
   + at least a few GB
2. Configuring the USB's filesystem for Rust
   + This step is only necessary if your target USB drive is not using the NTFS filesystem already,  it **is** necessary if you have [ExFat, Fat32 or another similar filesystem](https://github.com/rust-lang/rustup/issues/2680)
   + To check what filesystem you are using, just right-click > properties
   + in cmd type ```CONVERT D: /FS:NTFS /NOSECURITY```
3. TODO: currently local, make portable if can (Visual Studio 2019 C++ build tools)
4. [Get the rust installer](https://www.rust-lang.org/tools/install)
   + WARNING: this took a very long time to install onto a flashdrive while on windows, If you are willing to sacrifice installing rust-docs [this link](https://github.com/rust-lang/rustup/issues/2444) might be helpful 
   + Then run [setup.bat](https://github.com/TheBluePineapple/portable-rust-guide/blob/main/setup.bat) to set the environment/path variables
   + 
