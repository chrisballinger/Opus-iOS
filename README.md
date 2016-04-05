# Opus-iOS

> Opus is a totally open, royalty-free, highly versatile audio codec. Opus is unmatched for interactive speech and music transmission over the Internet, but is also intended for storage and streaming applications. It is standardized by the Internet Engineering Task Force (IETF) as RFC 6716 which incorporated technology from Skype's SILK codec and Xiph.Org's CELT codec.

iOS build scripts for the [Opus Codec](http://www.opus-codec.org). I am also working on an Objective-C wrapper called [OpusKit](https://github.com/chrisballinger/opuskit).

### Usage

Before build, be sure you installed autoconf, automake and libtool. Otherwise, run:

```bash
brew install autoconf
brew install automake
brew install libtool
```

Check your custom configs in build-libopus.sh, and modify the settings for your custom need in these 2 lines:  

```
SDKVERSION="9.2"
MINIOSVERSION="8.0"
```

1. `$ bash build-libopus.sh`
2. Drag `dependencies/` into your Xcode project.
3. Enjoy!


### License

MIT