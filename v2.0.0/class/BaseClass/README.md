# Base class

The Base class is designed for MVC(Model-View-Controller). MVC helps you to write your code Model, View and Controller separately.

## Constructor

<table>
    <tr>
        <th>BaseClass()</th>
        <td>Creates an MVCObject.</td>
    </tr>
</table>

## Methods
<table>
    <tr>
        <th><a href="./addListener/README.md">addListener()</a></th>
        <td>Adds the given listener function to the given event name.</td>
    </tr>
    <tr>
        <th><a href="./addListenerOnce/README.md">addListenerOnce()</a></th>
        <td>Adds the given listener function to the given event name. This event listener works only at once.</td>
    </tr>
    <tr>
        <th><a href="./get_set/README.md">get()</a></th>
        <td>Gets a value.</td>
    </tr>
    <tr>
        <th><a href="./get_set/README.md">set()</a></th>
        <td>Sets a value.</td>
    </tr>
    <tr>
        <th><a href="./removeEventListener/README.md">removeEventListener()</a></th>
        <td>Remove the event listener. If you omit both parameters, all event listeners that added to the object are removed.</td>
    </tr>
    <tr>
        <th>on()</th>
        <td>The same as the <a href="./addListener/README.md">addListener()</a> method.</td>
    </tr>
    <tr>
        <th>one(eventName:string, handler:Function)</th>
        <td>The same as <a href="./addListenerOnce/README.md">addListenerOnce()</a>.</td>
    </tr>
    <tr>
        <th>off(eventName?:string, callback?:function)</th>
        <td>The same as <a href="./removeEventListener/README.md">removeEventListener()</a>.</td>
    </tr>
    <tr>
        <th>empty()</th>
        <td>Clear all stored values</td>
    </tr>
    <tr>
        <th><a href="./trigger/README.md">trigger()</a></th>
        <td>Dispatch an event with given name and parameters.</td>
    </tr>
</table>
