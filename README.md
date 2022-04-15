# SecretSquirrel: A Demonstration of releasing Closed Source libraries privately via SPM.

<img src="https://user-images.githubusercontent.com/887225/163475445-364b68a7-5d7e-4cc2-9f36-7dbc984cf09c.jpg" width=300 />

A demo repository that showcases how to properly vend a closed-source framework. 

* Check out [The Basic Demo](https://github.com/JThramer/SecretSquirrel/tree/basic) to get the basic idea of how this is done
* Check out [The Dependancy Demo](https://github.com/JThramer/SecretSquirrel/tree/main) to see how you can easily satisfy external dependancies for an opaque binary framework using a wrapper package.

## Getting Started:
1. First, you must run `./generateFatBinary.sh` to generate the closed-source binary that the app project consumes.
2. Open the app project and run the app. 


## Overview:
* The [`SecretSquirrelFramework`](https://github.com/JThramer/SecretSquirrel/tree/main/SecretSquirrelFramework) represents the "hidden" source that the client does not have access to.
* The [`generateFatBinary.sh`](https://github.com/JThramer/SecretSquirrel/blob/main/generateFatBinary.sh) script represents your library publishing process. Run `./generateFatBinary.sh` in the project root directory to generate a "Release" of the `SecretSquirrelFramework` into the `Products` directory.
* The [`Products`](https://github.com/JThramer/SecretSquirrel/tree/main/Products) directory represents the deliverable. After generating the release, The entire directory would be zipped up and given to the client.
* The [`SecretSquirrelApp`](https://github.com/JThramer/SecretSquirrel/tree/main/SecretSquirrelApp) represents the client app that uses the black-box framework. It consumes the library's package.swift as part of the **local** swift package deliverable that would be ordinarily recieved as a zip, decompressed, and then bundled into the client project.
* The [`SecretSquirrelSPM`](https://github.com/MLB-Ballpark/SecretSquirrel/blob/main/Products/Sources/SecretSquirrelSPM/SecretSquirrelSPM.swift) package is an empty wrapper type that allows us to wrap `SecretSquirrel` in a second framework that allows us to define and satisfy all `SecretSquirrel` dependancies _for the client_ without betraying any source. The only reason the swift file exists is because SPM refuses to generate a target package that contains no source at all.
