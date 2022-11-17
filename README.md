# processing-healthBar
Constructor: healthBar (name) = new healthBar(x, y, width, height,
maxValue);

1\. set visible -\> (name).setVisibility(true);

2\. (optional) set starting value -\> (name).setValue(float); see also
setPercent() and adjustValue()

3\. run (name).update() to draw it!

+-----------------------------------+----------------------------------+
| Attribute                         | Function                         |
+===================================+==================================+
| Scaling of the bar                | **getScale()**                   |
|                                   |                                  |
|                                   | returns float                    |
+-----------------------------------+----------------------------------+
| get visibility of the bar         | **visibility()**                 |
|                                   |                                  |
| default -\> false;                | returns boolean                  |
|                                   |                                  |
| false -\> not shown               |                                  |
|                                   |                                  |
| true -\> shown                    |                                  |
+-----------------------------------+----------------------------------+
| set visibility of the bar         | **setVisibility(boolean)**       |
+-----------------------------------+----------------------------------+
| get the value of the bar          | **getVal()**                     |
|                                   |                                  |
|                                   | returns float                    |
+-----------------------------------+----------------------------------+
| set value to specific number      | **setValue(float)**              |
+-----------------------------------+----------------------------------+
| set value to a percentage\        | **setPercent(float)**            |
| examples:                         |                                  |
|                                   |                                  |
| 55 -\> 55%                        |                                  |
|                                   |                                  |
| 0.5 -\> 0.05%                     |                                  |
+-----------------------------------+----------------------------------+
| adjust the current value          | **adjustValue(float)**           |
|                                   |                                  |
| add = positive float              |                                  |
|                                   |                                  |
| subtract = negative float         |                                  |
+-----------------------------------+----------------------------------+
| set the fill colour               | **setFillColor(color)**          |
|                                   |                                  |
| default = color(255,0,0)          |                                  |
+-----------------------------------+----------------------------------+
| set the background colour         | **setBkgdColor(color)**          |
| (optional, default to off)        |                                  |
|                                   |                                  |
| (to set back to off, set to       |                                  |
| color(0,0,0,0)                    |                                  |
+-----------------------------------+----------------------------------+
| set the border colour             | **setBorderColor(color)**        |
|                                   |                                  |
| default = color(0,0,0)            |                                  |
+-----------------------------------+----------------------------------+
| set the border width              | **setBorderWidth(int)**          |
|                                   |                                  |
| default = 1                       |                                  |
+-----------------------------------+----------------------------------+
