# catch_error_mini

**Quick links:** 
[itch.io](https://yellowafterlife.itch.io/gamemaker-catch-error)
· [license](LICENSE)  
**Versions**: GameMaker: Studio, GameMaker Studio 2  
**Platforms**: Windows, Windows (YYC)

This is a _very_ simplified version of [catch_error](https://github.com/YAL-GameMaker/catch_error).

Unlike the regular extension, this one shows error messages as normal, but also stores the text in a file and retrieves it on game start (offering `error_occurred` and `error_last` variables).

Doing so guarantees that the error message will be captured even if the game crashes afterwards (a [known caveat](https://github.com/YAL-GameMaker/catch_error#known-issues) if have opted to display the error messages yourself).

If you're using the extension purely to send error messages to a backend/service
(e.g. [Sentry](https://marketplace.yoyogames.com/assets/7917/gmsentry)),
maybe it's for you.

So, instead of periodically checking for errors, you would instead do
```gml
// somewhere on game start
if (error_occurred) {
    sentry_capture_exception(error_last);
}
```

Unlike the real `catch_error`, it does work in GMS≥2.3, though you should probably be using [GMLogging-Suite](https://github.com/meseta/gmlogging-suite) instead.

## Preparing to build

Needless to say, this requires basic familiarity with Visual Studio, Command Prompt/PowerShell, and Windows in general.

### Setting up GmxGen

1. [Install Haxe](https://haxe.org/download/) (make sure to install Neko VM!)
2. [Download the source code](https://github.com/YAL-GameMaker-Tools/GmxGen/archive/refs/heads/master.zip) 
(or [check out the git repository](https://github.com/YAL-GameMaker-Tools/GmxGen))
3. Compile the program: `haxe build.hxml`
4. Create an executable: `nekotools boot bin/GmxGen.n`
5. Copy `bin/GmxGen.exe` to a folder your PATH (e.g. to Haxe directory )

### Setting up GmlCppExtFuncs

1. (you should still have Haxe and Neko VM installed)
2. [Download the source code](https://github.com/YAL-GameMaker-Tools/GmlCppExtFuncs/archive/refs/heads/master.zip) 
(or [check out the git repository](https://github.com/YAL-GameMaker-Tools/GmlCppExtFuncs))
3. Compile the program: `haxe build.hxml`
4. Create an executable: `nekotools boot bin/GmlCppExtFuncs.n`
5. Copy `bin/GmlCppExtFuncs.exe` to a folder your PATH (e.g. to Haxe directory )

## Building

Open the `.sln` in Visual Studio (VS2019 was used as of writing this), compile for x86 - Release.

If you have correctly set up `GmxGen` and `GmlCppExtFuncs`,
the project will generate the `autogen.gml` files for GML<->C++ interop during pre-build
and will copy and [re-]link files during post-build.

## Meta

**Author:** [YellowAfterlife](https://github.com/YellowAfterlife)  
**License:** Custom license (see `LICENSE`)