import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

import com.company.machine 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: window

    Component.onCompleted: {
        progressBar.value = machine.workload
        btnStart.enabled = true
        btnStop.enabled = false
        btnPause.enabled = false
        btnResume.enabled = false
    }

    Machine {
        id: machine
        onStarted: {
            btnStart.enabled = false
            btnStop.enabled = true
            btnPause.enabled = true
            btnResume.enabled = false

            lblStatus.text = "Started"
        }

        onStopped: {
            btnStart.enabled = true
            btnStop.enabled = false
            btnPause.enabled = false
            btnResume.enabled = false

            lblStatus.text = "Stopped"
            progressBar.value = 0.0
        }

        onPaused: {
            btnStart.enabled = false
            btnStop.enabled = true
            btnPause.enabled = false
            btnResume.enabled = true

            lblStatus.text = `Paused at ${machine.workload}%`
        }

        onResumed: {
            btnStart.enabled = false
            btnStop.enabled = true
            btnPause.enabled = true
            btnResume.enabled = false

            lblStatus.text = "Resumed"
        }

        onProgress: {
            //lblStatus.text = "Progress: " + machine.workload + "%"
            lblStatus.text = `Progress: ${machine.workload}%`
            progressBar.value = (machine.workload * 0.01)
        }
    }

    Column {
        id: column
        width: 440
        height: 65
        anchors.centerIn: parent
        spacing: 10

        Label {
            id: lblStatus
            text: "Status"
        }

        ProgressBar {
            id: progressBar
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            value: 0.5
        }

        Row {
            id: row
            width: parent.width
            height: 400
            spacing: 10

            Button {
                id: btnStart
                text: "Start"
                onClicked: {
                    machine.start()
                }
            }

            Button {
                id: btnPause
                text: "Pause"
                onClicked: {
                    machine.pause()
                }
            }

            Button {
                id: btnResume
                text: "Resume"
                onClicked: {
                    machine.resume()
                }
            }

            Button {
                id: btnStop
                text: "Stop"
                onClicked: {
                    machine.stop()
                }
            }
        }
    }
}
