let root
let box

function performClick() {
    //Javascript in a signal handler
    print("JS in a signal handler")
    const max = root.width - box.width
    box.x = (box.x === 0) ? max : 0
}

function swapColor(obj) {
    return obj.pressed ? "orange" : "gray"
}

function startup(croot, cbox) {
    print("Starting!")

    root = croot
    box = cbox
}

function clicked(mouse) {
    print("Clicked!!")
    performClick()
}
