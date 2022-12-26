/*_____________________________________________________________________________
 │                                                                            |
 │ COPYRIGHT (C) 2020 Mihai Baneu                                             |
 │                                                                            |
 | Permission is hereby  granted,  free of charge,  to any person obtaining a |
 | copy of this software and associated documentation files (the "Software"), |
 | to deal in the Software without restriction,  including without limitation |
 | the rights to  use, copy, modify, merge, publish, distribute,  sublicense, |
 | and/or sell copies  of  the Software, and to permit  persons to  whom  the |
 | Software is furnished to do so, subject to the following conditions:       |
 |                                                                            |
 | The above  copyright notice  and this permission notice  shall be included |
 | in all copies or substantial portions of the Software.                     |
 |                                                                            |
 | THE SOFTWARE IS PROVIDED  "AS IS",  WITHOUT WARRANTY OF ANY KIND,  EXPRESS |
 | OR   IMPLIED,   INCLUDING   BUT   NOT   LIMITED   TO   THE  WARRANTIES  OF |
 | MERCHANTABILITY,  FITNESS FOR  A  PARTICULAR  PURPOSE AND NONINFRINGEMENT. |
 | IN NO  EVENT SHALL  THE AUTHORS  OR  COPYRIGHT  HOLDERS  BE LIABLE FOR ANY |
 | CLAIM, DAMAGES OR OTHER LIABILITY,  WHETHER IN AN ACTION OF CONTRACT, TORT |
 | OR OTHERWISE, ARISING FROM,  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR  |
 | THE USE OR OTHER DEALINGS IN THE SOFTWARE.                                 |
 |____________________________________________________________________________|
 |                                                                            |
 |  Author: Mihai Baneu                           Last modified: 15.May.2020  |
 |                                                                            |
 |___________________________________________________________________________*/

Product {
    name: 'application'
    type: 'app'

    Depends { name: 'rp' }
    Depends { name: 'boot' }
    Depends { name: 'rp2040' }

    Depends { name: 'pico_platform' }
    Depends { name: 'pico_runtime' }
    Depends { name: 'pico_sync' }
    Depends { name: 'pico_util' }
    Depends { name: 'pico_time' }
    Depends { name: 'hardware_gpio' }
    Depends { name: 'hardware_sync' }
    Depends { name: 'hardware_irq' }
    Depends { name: 'hardware_claim' }
    Depends { name: 'hardware_timer' }
    Depends { name: 'hardware_clocks' }
    Depends { name: 'hardware_watchdog' }
    Depends { name: 'hardware_xosc' }
    Depends { name: 'hardware_pll' }

    files: [
        '*.h',
        '*.c',
    ]

    Group {
        qbs.install: true
        fileTagsFilter: ['app', 'map', 'bin']
    }
}
