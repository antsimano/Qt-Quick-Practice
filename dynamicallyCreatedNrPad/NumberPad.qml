import QtQuick 2.0
import QtQuick.Controls 2.3

Item {
    id: root
    signal clicked(int value)

    Column {
        id: col
        Grid {
            id: grid
            spacing: 5
            rows: 4
            columns: 3
        }
    }

    function doClicked(value) {
        console.log(value)
        clicked(value)
    }

    Component.onCompleted: {
        console.log("Creating Button")
        let num = 0
        for(let i = 0; i < 10; i++) {
            //First Row
            if(i === 0) num = 7;
            if(i === 3) num = 4;
            if(i === 6) num = 1;
            if(i === 9) num = 0;

            let btn = Qt.createQmlObject(
                    `import QtQuick 2.0; import QtQuick.Controls 2.3; Button{id: btn${i}; onClicked:doClicked(${num})}`, grid, "DynamicallyLoaded"
                    )
            btn.text = num
            btn.width = 40
            btn.height = 40
            num++
        }
        //Set the last button on the bottom
        let obj = grid.children[grid.children.length - 1]
        obj.parent = col
        obj.width = (40 * grid.columns) + 10
    }
}
