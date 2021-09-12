# Starbase: YSuite - YS.Pos & YS.Nav

![Beautiful Png that does not work now for some reason :/](https://i.imgur.com/oovBnC9.png)


Made with love by Senkii & ThelegendofWolf


Welcome to the code branch of the [Starbase](https://store.steampowered.com/app/454120/Starbase/): YSuite - YS.Pos & YS.Nav.
Ask questions and follow updates on the [YSuite Discord](https://discord.gg/GXvUksW).

| Module | File or Folder | Coordinates | Velocity | Nav | # Basic Chips | # Advanced Chips |
| - | - | - | - | - | - | - |
| YS.Pos SingleChip | [ys-pos.yolol](ys-pos.yolol) | Yes | No | No | 1 | - |
| YS.Pos Velocity | [ys-pos-velocity.yolol](ys-pos-velocity.yolol) | Yes | Yes | No | - | 1 |
| YS.Pos MultiChip | [/multichip/ys-pos/](/multichip/ys-pos/) | Yes | Yes | No | 4 | 1 |
| YS.Nav SingleChip | [ys-nav.yolol](ys-nav.yolol) | Yes | Yes | Yes | - | 1 |
| YS.Nav MultiChip | [/multichip/ys-nav/](/multichip/ys-nav/) | Yes | Yes | Yes | 6 | 2 |

*Hint: For streaming, rename the yolol chip(s) to `GPS`, and link a button with OnState `0` and OffState `-1` to `GPS` to temporarily hide your location!*

*Note: YS.pos and YS.nav are fully compatible with the new version of ISAN. This means you'll be able to navigate to the position of anyone, no matter what system they use!*


<br><br><br>
## YS.Pos

![Beautiful Png that does not work now for some reason :/](https://i.imgur.com/JdqHd8N.png)

Our answer to the question: <br>
Where the f'ck am I!?


<br><br>
### YS.Pos SingleChip

| Yolol File | Chip | Purpose |
| - | - | - |
| [ys-pos.yolol](ys-pos.yolol) | Basic | Calculate and display coordinates |

The single chip version of YS.Pos can be found [here](ys-pos.yolol).
This yolol script will output your X, Y and Z coordinates in-game!
The script works on a basic chip.

#### Setup

Connect a receiver anywhere on your ship and change the following data:
| Original name | New name | Value |
| - | - | - |
| SignalStrength | s | - |
| ListenAngle | - | 180 |
| TargetMessage | tm | - |
| TargetFrequency | - | 1 |
| Frequency | - | 0 |

Connect a text panel anywhere on your ship and change the following data:
| Original name | New name | Value |
| - | - | - |
| PanelValue | Pos | - |
| PanelVariableResolution | - | 1 |

Connect a basic (or better) yolol chip anywhere on your ship and put in the script from [ys-pos.yolol](ys-pos.yolol).


<br><br>
### YS.Pos Velocity

| Yolol File | Chip | Purpose |
| - | - | - |
| [ys-pos-velocity.yolol](ys-pos-velocity.yolol) | Advanced | Calculate and display coordinates and velocity |

The single chip version of YS.Pos Velocity can be found [here](ys-pos-velocity.yolol).
This yolol script will output your X, Y and Z coordinates, and velocity in-game!
The script requires at least an advanced chip.
The velocity value may fluctuate a lot, and sadly this is not due to the script.

#### Setup

Follow the setup from YS.Pos SingleChip, but use [ys-pos-velocity.yolol](ys-pos-velocity.yolol) and an advanced chip instead.


<br><br>
### YS.Pos MultiChip

| Yolol File | Chip | Purpose |
| - | - | - |
| [/multichip/ys-pos/calculate-v.yolol](/multichip/ys-pos/calculate-v.yolol) | Advanced | Calculate velocity |
| [/multichip/ys-pos/init-variables-z-x.yolol](/multichip/ys-pos/init-variables-z-x.yolol) | Basic | Initialize variables and calculate Z and X coordinates |
| [/multichip/ys-pos/print-pos.yolol.yolol](/multichip/ys-pos/print-pos.yolol.yolol) | Basic | Print position information |
| [/multichip/ys-pos/receiver-1-2-3.yolol](/multichip/ys-pos/receiver-1-2-3.yolol) | Basic | Read signal from receivers 1-3 |
| [/multichip/ys-pos/receiver-4-y.yolol](/multichip/ys-pos/receiver-4-y.yolol) | Basic | Read signal from receiver 4 and calculate Y coordinate |

The multi-chip version of YS.Pos can be found [here](/multichip/ys-pos/).
The purpose of the multi-chip version is to put the calculations in parallel, which speeds up YS.Pos by a lot. It will give an output every line-duration (around 0.2 seconds). This version requires 4 receivers, 4 basic chips and 1 advanced chip.

#### Setup

Connect 4 receivers anywhere on your ship and change the following data on all of them:
| Original name | New name | Value |
| - | - | - |
| ListenAngle | - | 180 |
| TargetFrequency | - | 1 |
| Frequency | - | 0 |

Then change the data per receiver accordingly:
| Receiver nr. | Original name | New name | Value |
| - | - | - | - |
| 1 | SignalStrength | s1 | - |
| 2 | SignalStrength | s2 | - |
| 3 | SignalStrength | s3 | - |
| 4 | SignalStrength | s4 | - |
| 1 | TargetMessage | - | origin_east |
| 2 | TargetMessage | - | origin_west |
| 3 | TargetMessage | - | origin_north |
| 4 | TargetMessage | - | origin_south |

Connect a text panel anywhere on your ship and change the following data:
| Original name | New name | Value |
| - | - | - |
| PanelValue | Pos | - |
| PanelVariableResolution | - | 1 |

Install all yolol chips on the ship.

Put the following variablenames in static device fields (Memory chips)

| Name |
| - |
| dA |
| dB | 
| dC |
| dD |
| tx |
| ty |
| tz |
| x |
| y |
| z |
| v |



<br><br><br>
## YS.Nav

![Beautiful Png that does not work now for some reason :/](https://i.imgur.com/eFvGRqN.png)

Did your friend give you their coordinates and do you just want to fly there without having to do anything?<br>
YS.Nav has you covered! YS.Nav aims to provide automatic ship navigation for any player.<br>

YS.Nav is an extension of YS.Pos, meaning it includes all features of YS.Pos!

*Note: YS.Nav assumes your ship has an FCU, forward thrusters, pitch and yaw thrusters.*


<br><br>
### YS.Nav SingleChip

| Yolol File | Chip | Purpose |
| - | - | - |
| [ys-nav.yolol](ys-nav.yolol) | Advanced | Calculate and display coordinates, velocity and target distance + Autonavigation |

The single-chip version is cheap but slow. It can be found [here](ys-nav.yolol).<br>

#### Setup

Connect a receiver that is **as far as possible to the center-front of your ship** and change the following data:
| Original name | New name | Value |
| - | - | - |
| SignalStrength | s | - |
| ListenAngle | - | 180 |
| TargetMessage | tm | - |
| TargetFrequency | - | 1 |
| Frequency | - | 0 |

Connect a text panel anywhere on your ship and change the following data:
| Original name | New name | Value |
| - | - | - |
| PanelValue | Pos | - |
| PanelVariableResolution | - | 1 |

Connect a toggle-button with name `T`.

Connect a toggle-button with name `C` and change the `Cruise` name in the `fcu` to `C`.

Change the following names in the FCU (Note: After this you will have to remap your controls!):

| Original name | New name |
| - | - |
| Pitch | p |
| Yaw | y |
| fcuForward | fwd |

Connect a basic (or better) yolol chip anywhere on your ship and put in the script from [ys-nav.yolol](ys-nav.yolol).

#### Use

Change the values of `tx`, `ty` and `tz` to your desired destination coordinates.<br>
Enable `T` when your ship is static and the ship will try to aim the receiver to the destination.<br>
Disable `T` to stop and switch to manual control.<br>
After some time (It can take long due to script lag), it will fly by setting `fwd` to `100` and turn on `C` (Before `Cruise`).<br>
If your ship flies too far off-route (The target distance is increasing instead of decreasing) it will restart the navigation.<br>
If your ship is within `TD` meters (Default: 600m), it will disable `T`, as you have arrived at your destination!<br>
*Hint: Do not use outside the safezone*


<br><br>
### YS.Nav MultiChip

| Yolol File | Chip | Purpose |
| - | - | - |
| [/multichip/ys-nav/calculate-target-distance.yolol](/multichip/ys-nav/calculate-target-distance.yolol) | Advanced | Calculate target distance |
| [/multichip/ys-nav/calculate-v.yolol](/multichip/ys-nav/calculate-v.yolol) | Advanced | Calculate velocity |
| [/multichip/ys-nav/destinations.yolol](/multichip/ys-nav/destinations.yolol) | Basic | Cycle through destinations (Note: For bus-use!) |
| [/multichip/ys-nav/init-variables-z-x.yolol](/multichip/ys-nav/init-variables-z-x.yolol) | Basic | Initialize variables and calculate Z and X coordinates |
| [/multichip/ys-nav/navigation.yolol](/multichip/ys-nav/navigation.yolol) | Advanced | Navigation |
| [/multichip/ys-nav/print-pos.yolol.yolol](/multichip/ys-nav/print-pos.yolol.yolol) | Basic | Print position information |
| [/multichip/ys-nav/receiver-1-2-3.yolol](/multichip/ys-nav/receiver-1-2-3.yolol) | Basic | Read signal from receivers 1-3 |
| [/multichip/ys-nav/receiver-4-y.yolol](/multichip/ys-nav/receiver-4-y.yolol) | Basic | Read signal from receiver 4 and calculate Y coordinate |

The multi-chip version of YS.Nav is a lot faster than the single-chip version! You can find this version [here](/multichip/ys-nav/).

#### Setup

Connect 4 receivers close together and **as far as possible to the center-front of your ship** and change the following data on all of them:
| Original name | New name | Value |
| - | - | - |
| ListenAngle | - | 180 |
| TargetFrequency | - | 1 |
| Frequency | - | 0 |

Then change the data per receiver accordingly:
| Receiver nr. | Original name | New name | Value |
| - | - | - | - |
| 1 | SignalStrength | s1 | - |
| 2 | SignalStrength | s2 | - |
| 3 | SignalStrength | s3 | - |
| 4 | SignalStrength | s4 | - |
| 1 | TargetMessage | - | origin_east |
| 2 | TargetMessage | - | origin_west |
| 3 | TargetMessage | - | origin_north |
| 4 | TargetMessage | - | origin_south |

Connect a text panel anywhere on your ship and change the following data:
| Original name | New name | Value |
| - | - | - |
| PanelValue | Pos | - |
| PanelVariableResolution | - | 1 |

Install all yolol chips on the ship.<br>
Install the [destinations.yolol](destinations.yolol) chip only when aiming to cycle through destinations like a bus!

Put the following variablenames in static device fields (Memory chips)

| Name |
| - |
| OK |
| TD |
| dA |
| dB | 
| dC |
| dD |
| tx |
| ty |
| tz |
| x |
| y |
| z |
| v |

Connect a toggle-button with name `Nav`.

Connect a toggle-button with name `rt`

Change the following names in the FCU (Note: After this you will have to remap your controls!):

| Original name | New name |
| - | - |
| Pitch | p |
| Yaw | ya |
| fcuForward | fwd |

#### Use

Change the values of `tx`, `ty` and `tz` to your desired destination coordinates.<br>
Enable `Nav` when your ship is static and the ship will try to aim the receiver to the destination.<br>
Disable `Nav` to stop and switch to manual control.<br>
After some time (It can take long due to script lag), it will fly by setting `fwd` to `100`.
If your ship flies too far off-route (The target distance is increasing instead of decreasing) it will restart the navigation.<br>
If your ship is within `OK` meters (Default: 200m), it will disable `Nav`, as you have arrived at your destination!<br>

*Hint: Do not use outside the safezone*

#### Use as bus

Make sure you have the [destinations.yolol](destinations.yolol) installed.<br>
In there, change the different target coordinates to make multiple stops.<br>
In [navigation.yolol](navigation.yolol) remove `:Nav=(:TD<:OK)` from line 7.



<br><br><br>
## Math

Curious about the math behind YS.Pos and YS.Nav?

To be able to determine one's position in Starbase, we use multilateration.
This is a method that allows us to calculate your position in 3D space, if the coordinates of
four points that are not on a plane, and the distances from you to those points are known.<br>
A visualisation of this method can be seen in the animation below:
![Beautiful Gif that does not work now for some reason :/](https://imgur.com/8dbL7gW.gif)


<br><br>
### Origin Transmitter Coordinates: Setting up a coordinate system

Luckily, the FrozenByte Developers put 4 fixed transmitters in the universe, which are not on one plane!
We cannot immediately assign coordinates to the transmitters. First we have to measure the signal strength differences between all transmitters.
This gives us the data that can be seen in [/data/measurement_data_and_coordinate_calculations.xlsx](/data/measurement_data_and_coordinate_calculations.xlsx), B3 to G6.
These are the measurements done from both sides of the transmitter (The transmitter is a physical entity, disabling us from putting a receiver inside to measure the correct signal strength difference) and from both transmitters, A to B and B to A for example.
The averages are taken and shown in B7 to G7.<br>
The converted values (MaximumSignalStrength-signalstrength = 1000000-signalstrength) are shown in B8 to G8.<br>

We use the following names for the stations:
| Assigned Letter | In-Game Name |
| - | - |
| A | origin_east |
| B | origin_west |
| C | origin_north |
| D | origin_south |

We use a (hopefully) player-preferred axis setup, assuming your current location is Origin:<br>
- Positive Z towards the belt.<br>
- Positive Y 'up'.<br>

Therefore, it is best to put A and B on the X-axis and put A in the origin. This gives us the coordinates of A and B, which are shown in B11 to C13. From here, we can calculate the X-coordinates of C and D by creating spheres:<br>
- Sphere_A_C: Sphere with origin A and radius distance(A to C)
- Sphere_B_C: Sphere with origin B and radius distance(B to C)

Then the X-coordinate can be found by evaluating `Sphere_A_C = Sphere_B_C`, and the same can be done for D.

Here, things get difficult as C and D do not share the same X-Coordinate in our coordinate system. Luckily, stating that C and D share the same Z-Coordinate, the Z-Axis will be pointing roughly towards the belt, which is convenient. If we also state that their Z-Coordinate is positive, we can use an algorithm to find a Cz=Dz such that distance(C to D) corresponds to the measured value. The algorithm used for this can be found in [/data/find_coords.py](/data/find_coords.py). The algorithm starts from a guessed value of Z and evaluates the increasing Z value each time by calculating the Y-Coordinates of C and D with it and evaluating if distance(C to D) is as close to the measured value as possible.

Then, all the coordinates of the transmitters have been calculated or found and can be seen in B11 to E13. This creates the following model:<br>
![Beautiful Gif that does not work now for some reason :/](https://i.imgur.com/cvCRb1k.gif)

To play around with it or have a closer look, go to [GeoGebra](https://www.geogebra.org/calculator) and open the [/data/model_geogebra.ggb](/data/model_geogebra.ggb) file.


<br><br>
### Calculations and equations

Now that we have the coordinates of all transmitters and can measure the distance to each of them In-Game with a receiver, we can perform calculations and setup equations for multilateration. The calculations can be found in [/data/calculations.txt](/data/calculations.txt).<br>
A MATLAB script is used to form the most simplified equations from the calculations. This script can be found in [/data/equations.m](/data/equations.m).<br>
Another MATLAB script can be used to test the equations from the calculations text file and can be found in [/data/test_calculations.m](/data/test_calculations.m).

This + lots of coffee + late nights = code
