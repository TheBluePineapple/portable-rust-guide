# Portable Rust Guide
  
## Summary
A guide to creating a portable installation of rust.  This allows you to keep all the files associated with the rust programming language on a normal USB drive(with a little bit of configuration), so that you can program using the language on any computer(currently only tested with windows, batch scripts provided obviously only work on 64 bit windows)  
Feel free to edit this guide, as I only tried enough things to get it working, and I don't know if I did it the most efficient way.
___
## Instructions
1. Find a suitable USB flashdrive
   + For our purposes you'll want decent read/write speeds
2. Configuring the USB's filesystem for Rust
   + This step is only necessary if your target USB drive is not using the NTFS filesystem already,  it **is** necessary if you have [ExFat, Fat32 or another similar filesystem](https://github.com/rust-lang/rustup/issues/2680)
   + Check what filesystem it's using: right-click the drive > properties
   + In Command Prompt enter ```CONVERT D: /FS:NTFS /NOSECURITY```
3. Visual Studio 2019 C++ Build Tools
   + Currently I have been unable to find a way to make this part of the process portable. if you want it to be portable as well, instead of using msvc you need to use MinGW, this means you need to choose mingw as the host triplet to install, and you need to change the mingw environment variables, I have not tried this yet, but I will update this repository later.
   + Get the installer [here](https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=BuildTools&rel=16)
   + Run it and select *Desktop Development with C++* then click install
4. Then run [setup.bat](https://github.com/TheBluePineapple/portable-rust-guide/blob/main/setup.bat) to set the environment/path variables
   + Make sure environment variables were set correctly
   + If you have other portable programs running along side rust, like Visual Studio Code, MinGW(if so make sure to choose _x86_64-pc-windows-gnu_ as your host triplet to install in **step 5**), git, or an X11 server.  Some of the paths for these are commented out in the [setup.bat](https://github.com/TheBluePineapple/portable-rust-guide/blob/main/setup.bat) file, but you should make sure that they are correct before running
5. [Get the rust installer](https://www.rust-lang.org/tools/install)
   + I chose custom installation(option 2), then set update path variable to no
   + You could also install a custom toolchain as well
   + WARNING: this took a very long time to get rust on a flashdrive while on windows, If you are willing to sacrifice installing rust-docs [this link](https://github.com/rust-lang/rustup/issues/2444) might be helpful(I didn't do this step)
6. run ```rustup --version```
   + if you don't see numbers, try running [setup.bat](https://github.com/TheBluePineapple/portable-rust-guide/blob/main/setup.bat) and double check that all your environment variables are correct



## Credits
I've never documented anything like this before, but I was amazed at the lack of resources for it.  However there were a couple of posts that really helped get me in the right direction  
   * [This answer](https://stackoverflow.com/questions/53928194/how-do-i-get-a-portable-installation-of-the-rust-programming-language#answer-66615774) is what provided the basis for the batch file that setup the environment variables
   * Links: [portable rust installation](https://users.rust-lang.org/t/solved-portable-rust-installation/12559), [Discord server](https://discord.com/invite/rust-lang-community)