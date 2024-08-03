import QtQuick 2.0
import QtQuick.Controls 2.3
import "variables.js" as Code

Item {
    id: geine
    signal generate(int min, int max)
    width: 200
    height: 300

    Column {
        id: column
        anchors.fill: parent
        spacing: 25

        Label {
            id: lblStatus
            text: `${Code.value1} to ${Code.value2}`
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 15
            font.bold: true
        }

        RangeSlider {
            id: slider
            second.value: 100
            to: 100
            anchors.horizontalCenter: parent.horizontalCenter
            first.onMoved: {
                lblStatus.text = `${Math.round(first.value)} to ${Math.round(second.value)}`
            }
            second.onMoved: {
                lblStatus.text = `${Math.round(first.value)} to ${Math.round(second.value)}`
            }
        }

        Button {
            id: btnGenerate
            text: "Generate"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                let min = Math.round(slider.first.value)
                let max = Math.round(slider.second.value)
                let total = Math.floor(Math.random() * (max - min + 1) - min)
                console.log(total)
                lblResult.text = `${Math.abs(total)}`
            }
        }

        Label {
            id: lblResult
            anchors.horizontalCenter: parent.horizontalCenter
            text: ""
            font.pointSize: 25
            font.bold: true
        }
    }
}
