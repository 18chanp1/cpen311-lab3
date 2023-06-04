# Something about the CPEN 311 Lab 2
## Something about the SOF File
It is located here:
[./rtl/simple_ipod_solution.sof](./rtl/simple_ipod_solution.sof)

## Something about the status
All parts complete, including music playback, pause, resume, speedup, speed down, speed reset, forward, backward.

R key is implemented

44KHz is implemented

Additional titanic.jic for your listening pleasure.

## Annotated Screenshots
Full sized screenshots are located in the [./doc](./doc) folder

### Simulations
Music fetcher FSM  1 - Wait, read, increment
![fetcher1.png](./doc/Simulation/fetcher1.png)
Music fetcher FSM 2 - Reset, reverse, and song end
![fetcher2.png](./doc/Simulation/fetcher2.png)

Fetcher Controller FSM 1 - Keyboard inputs
![music_fetcher wave1.png](./doc/Simulation/music_fetcher wave1.png)

Fetcher controller FSM 2 - Pushbutton events
![spdupdown.png](./doc/Simulation/spdupdown.png)

### Signaltap screenshots

Fetcher controller FSM 1, keyboard E, B, F, R, D
![stp_controller_kbd.png](./doc/Signaltap/stp_controller_kbd.png)

Fetcher controller FSM 2 - Speed reset event
![stp_spddown.png](./doc/Signaltap/stp_spddown.png "stp_spddown.png")

Fetcher controller FSM 3 - Speed up event
![stp_spdrst.png](./doc/Signaltap/stp_spdrst.png)

Fetcher controller FSM 4 - Speed up event
![stp_spdup.png](./doc/Signaltap/stp_spdup.png)


Music fetcher FSM 1, Decrementing addresses
![stp_fetcher_backward.png](./doc/Signaltap/stp_fetcher_backward.png "stp_fetcher_backward.png")

Music fetcher FSM 2 - incrementing addresses
![stp_fetcher_forward.png](./doc/Signaltap/stp_fetcher_forward.png)

Music fetcher FSM 3 - Resetting
![stp_fetcher_rst.png](./doc/Signaltap/stp_fetcher_rst.png)

## Something about the simulations
They are located in [./sim](./sim)
They were created using modelsim 10.5b. There is the fetcher controller and music fetcher, which each have their own simulations. 

The test benches are prefixed to the device under test by "tb". You should load that file into modelsim when you start your simulation.

A waves.do file is included so you can see the waves as I intended. There are also some custom radices included so you can see the states and button presses more clearly like my screenshots.

A vsim.wlf is included so you can load the simulations in if you don't want to simulate them again. 

## FSM Diagrams
[./doc/FSMs](./doc/FSMs), or see PDF version below.

## Additional Information
How to customize your songs?

1. Download an mp3 file
2. export as RAW binary
3. Using the intelHex Utility, convert binary to hex
4. using the quartus programmer file converter (or something similar, on file)
5. Set EPCS128
6. Add the Hex file in, the device, and generate.
7. Use JIC file as ususal

Some extra songs are in extra_songs


RTL_44 contains the version that works with 44KHz 8 bit samples. 

