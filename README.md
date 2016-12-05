
Ambisonics
==========
[![v]][tag]
[![build]][v0.3.1-beta]

An implementation of Ambisonics for Unity via Max/MSP.
Developed by the Ambisonic the Hedgehog Team.

---

## Getting Started ##
This is a game designed specifically for VR platforms,
but could still be considered at least mildly entertaining without VR.
You can read more about the system requirements on our [wiki][].

### Installing ###
You'll need to set up your VR device as you normally do,
and you'll need to download the latest version of our game.

## Changelog ##

### [v0.3.1-beta][] ###
- direct-to-player raycast sounds implemented
- rudimentary movement system added
- now focusing on Oculus spatialized headphones instead of room speakers / Max
- added fog and some pillars to show off our new, swanky occlusion

### [v0.3.0-alpha][] ###
- fixed a bug which caused the Oculus prefab to instantiate at inconsistent rotations
- added support for ordinary audio for non-ambisonic playback

### [v0.2.0-alpha][] ###
- basic movement system added, does not yet reliably move between visible areas.
- fallback sounds for non-ambisonic playback
- new, partially-implemented direct raycast sound emitter

### [v0.1.1-alpha][] ###
- multiple sounds now played over Max/MSP connection
- more data being sent to Max/MSP including:
    - absorption of sound, so sound loses volume when colliding
    - surface roughness, as a factor of sound diffusion
    - occlusion, which may have applications for simulating echoes
    - attenuation, which simulates sounds traveling through different substances
- quick player prefab switcher implemented, now one build works for all platforms
- models made with special sound maps
    - absorption is red, roughness is blue, etc
- snow particles and color grading added
    - establishes a cold environment, looks pretty

### [v0.1.0-alpha][] ###
- implemented a basic raycasting solution for gathering sound data
- established pipeline from Unity objects to Max/MSP spatialized sounds
- only placeholder environment so far, not yet in separate rendering layer

[v0.3.1-beta]: <https://github.com/turbotortoise/Ambisonics/releases/tag/v0.3.1-beta>
[v0.3.0-alpha]: <https://github.com/turbotortoise/Ambisonics/releases/tag/v0.3.0-alpha>
[v0.2.0-alpha]: <https://github.com/turbotortoise/Ambisonics/releases/tag/v0.2.0-alpha>
[v0.1.1-alpha]: <https://github.com/turbotortoise/Ambisonics/releases/tag/0.1.1-alpha>
[v0.1.0-alpha]: <https://github.com/turbotortoise/Ambisonics/releases/tag/0.1.0-alpha>

[wiki]: <https://github.com/turbotortoise/Ambisonics/wiki/>
[mit]: <http://img.shields.io/:license-MIT-blue.svg>
[license]: <http://bescott.mit-license.org>
[v]: <https://img.shields.io/badge/version-0.3.1--beta-blue.svg>
[tag]: <https://github.com/turbotortoise/Ambisonics/releases/>
[build]: <https://img.shields.io/badge/build-prototype-yellow.svg>
