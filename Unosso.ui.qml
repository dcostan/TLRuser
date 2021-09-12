import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Particles 2.0

Page {
    width: stackView.width
    height: stackView.height

    title: qsTr("Unosso Bar")

    ScrollView {
        id: frame
        clip: true
        anchors.fill: parent

        Flickable {
            contentHeight: 600
            width: parent.width

            Image {
                x: (stackView.width/2) - width/2
                y: 20
                width: 80
                height: 80
                source: "qrc:/images/shop3.png"
            }

            Text {
                y: 120
                width: stackView.width
                text: qsTr("Status Argento")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 16
            }

            ProgressBar {
                x: stackView.width/2 - width/2
                y: 155
                width: 200
                value: 0.7
            }

            Text {
                y: 180
                width: stackView.width
                text: qsTr("Raccogli 57 token per il prosimo status")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 14
            }



            Text {
                x: 20
                y: 255
                text: qsTr("TITOLO")
                color: "#9b9b9b"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            ListView {
                id: list
                y: 280
                interactive: false
                width: stackView.width
                height: stackView.height
                property string bgcolor: "#d9d9d9"
                model: ["Le mie recensioni", "Invita un amico"]
                delegate: ItemDelegate {
                    width: stackView.width
                    onClicked: stackView.push("Comunicazioni.ui.qml")
                    Rectangle {
                        color: "#ffffff"
                        anchors.fill: parent
                        Text {
                            x: 50
                            y: parent.height/2 - height/2
                            text: modelData
                            font.pixelSize: 13
                        }
                        Text {
                            x: parent.width - 20
                            y: parent.height/2 - height/2
                            text: ">"
                            color: list.bgcolor
                        }
                        Rectangle {
                            x: stackView.width - width
                            y: parent.height - 2
                            width: index !== list.count-1 ? stackView.width-15 : stackView.width
                            border.color: list.bgcolor
                            height: 2
                            border.width: 1
                            Rectangle {
                                y: 0
                                width: parent.width
                                color: "#ffffff"
                                height: 1
                            }
                        }
                    }
                }
                Rectangle {
                    x: stackView.width - width
                    y: -2
                    width: stackView.width
                    border.color: list.bgcolor
                    height: 2
                    border.width: 1
                    Rectangle {
                        y: 1
                        width: parent.width
                        color: "#ffffff"
                        height: 1
                    }
                }
            }



            Text {
                x: 20
                y: 420
                text: qsTr("TITOLO")
                color: "#9b9b9b"
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 15
            }

            ListView {
                id: list1
                y: 445
                interactive: false
                width: stackView.width
                height: stackView.height
                property string bgcolor: "#d9d9d9"
                model: ["Sconti", "I miei acquisti"]
                delegate: ItemDelegate {
                    width: stackView.width
                    onClicked: stackView.push("Sconti.ui.qml")
                    Rectangle {
                        color: "#ffffff"
                        anchors.fill: parent
                        Text {
                            x: 50
                            y: parent.height/2 - height/2
                            text: modelData
                            font.pixelSize: 13
                        }
                        Text {
                            x: parent.width - 20
                            y: parent.height/2 - height/2
                            text: ">"
                            color: list1.bgcolor
                        }
                        Rectangle {
                            x: stackView.width - width
                            y: parent.height - 2
                            width: index !== list1.count-1 ? stackView.width-15 : stackView.width
                            border.color: list1.bgcolor
                            height: 2
                            border.width: 1
                            Rectangle {
                                y: 0
                                width: parent.width
                                color: "#ffffff"
                                height: 1
                            }
                        }
                    }
                }
                Rectangle {
                    x: stackView.width - width
                    y: -2
                    width: stackView.width
                    border.color: list1.bgcolor
                    height: 2
                    border.width: 1
                    Rectangle {
                        y: 1
                        width: parent.width
                        color: "#ffffff"
                        height: 1
                    }
                }
            }
        }
    }
}
