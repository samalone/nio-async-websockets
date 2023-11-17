# NIOAsyncWebSockets

This library contains files from NIO pull requests
[#2517](https://github.com/apple/swift-nio/pull/2517) and
[#2526](https://github.com/apple/swift-nio/pull/2526). These pull requests were
merged into NIO but later removed because they caused errors on iOS 15. Since
our library requires iOS 16, it should be safe to use this code.

Franz Busch recommended this approach on the
[Swift Forums](https://forums.swift.org/t/race-condition-in-tictacfish-sample-code/68237/7).
When the pull requests are re-added to NIO, this library should
become obsolete.

- [API documentation](https://samalone.github.io/nio-async-websockets/documentation/nioasyncwebsockets/)
