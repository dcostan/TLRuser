import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtGraphicalEffects 1.0

Page {
    width: stackView.width
    height: stackView.height

    header: ToolBar {
        Material.elevation: 0
        Material.primary: Material.Pink
        contentHeight: toolButton.implicitHeight

        Label {
            text: qsTr("Promozioni")
            anchors.centerIn: parent
        }
    }

    Popup {
        id: popup
        x: stackView.width/2 - popup.width/2
        y: 80
        width: stackView.width - 20
        height: 400
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        Image {
            id: qr
            x: parent.width/2 - width/2
            y: 20
            width: parent.width - 60
            height: width
            source: "qrc:/images/personalqr.png"
        }

        Button {
            id: close
            x: popup.width/2 - width/2
            y: 310
            text: qsTr("Chiudi")
        }
    }

    ScrollView {
        id: frame
        clip: true
        anchors.fill: parent

        Flickable {
            contentHeight: 600
            width: parent.width

            Rectangle {
                id: promo1
                width: swipeView.width/2 - 20
                height: 250
                radius: 7
                y: 10
                x: swipeView.width/4 - width/2

                Text {
                    y: 11
                    width: parent.width
                    text: qsTr("SUSHI ATTIMI")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 11
                }

                Rectangle {
                    x: parent.width/2 - width/2
                    y: 35
                    width: parent.width - 20
                    border.color: "#d9d9d9"
                    height: 2
                    border.width: 1
                    Rectangle {
                        y: 1
                        width: parent.width
                        color: "#ffffff"
                        height: 1
                    }
                }

                Image {
                    x: parent.width/2 - width/2
                    y: 45
                    width: 90
                    height: 90
                    source: "qrc:/images/sushi.png"
                }

                Text {
                    x: 20
                    y: 155
                    width: parent.width - 30
                    text: qsTr("All you can eat a cena per due")
                    wrapMode: Label.WordWrap
                    font.pixelSize: 16
                    font.bold: true
                }

                Text {
                    y: parent.height - 30
                    width: parent.width
                    text: qsTr("Scade il 03/06/2021")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 10
                }

                MouseArea {
                    id: click1
                    anchors.fill: parent
                }

            }

            DropShadow {
                anchors.fill: promo1
                cached: true
                horizontalOffset: 0
                verticalOffset: 0
                radius: 7
                samples: 16
                color: "#80000000"
                source: promo1
            }

            Rectangle {
                id: promo2
                width: swipeView.width/2 - 20
                height: 250
                radius: 7
                y: 10
                x: swipeView.width*3/4 - width/2

                Text {
                    y: 11
                    width: parent.width
                    text: qsTr("MODA SPORT")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 11
                }

                Rectangle {
                    x: parent.width/2 - width/2
                    y: 35
                    width: parent.width - 20
                    border.color: "#d9d9d9"
                    height: 2
                    border.width: 1
                    Rectangle {
                        y: 1
                        width: parent.width
                        color: "#ffffff"
                        height: 1
                    }
                }

                Image {
                    x: parent.width/2 - width/2
                    y: 45
                    width: 90
                    height: 90
                    source: "qrc:/images/shoes.png"
                }

                Text {
                    x: 20
                    y: 155
                    width: parent.width - 30
                    text: qsTr("-30% sulle scarpe da tennis")
                    wrapMode: Label.WordWrap
                    font.pixelSize: 16
                    font.bold: true
                }

                Text {
                    y: parent.height - 30
                    width: parent.width
                    text: qsTr("Scade il 27/09/2021")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 10
                }

                MouseArea {
                    id: click2
                    anchors.fill: parent
                }

            }

            DropShadow {
                anchors.fill: promo2
                cached: true
                horizontalOffset: 0
                verticalOffset: 0
                radius: 7
                samples: 16
                color: "#80000000"
                source: promo2
            }

            Rectangle {
                id: promo3
                width: swipeView.width/2 - 20
                height: 250
                radius: 7
                y: 270
                x: swipeView.width/4 - width/2

                Text {
                    y: 11
                    width: parent.width
                    text: qsTr("BAR TRE SCALINI")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 11
                }

                Rectangle {
                    x: parent.width/2 - width/2
                    y: 35
                    width: parent.width - 20
                    border.color: "#d9d9d9"
                    height: 2
                    border.width: 1
                    Rectangle {
                        y: 1
                        width: parent.width
                        color: "#ffffff"
                        height: 1
                    }
                }

                Image {
                    x: parent.width/2 - width/2
                    y: 45
                    width: 90
                    height: 90
                    source: "qrc:/images/beer.png"
                }

                Text {
                    x: 20
                    y: 155
                    width: parent.width - 30
                    text: qsTr("Patatine e hamburger a 10€")
                    wrapMode: Label.WordWrap
                    font.pixelSize: 16
                    font.bold: true
                }

                Text {
                    y: parent.height - 30
                    width: parent.width
                    text: qsTr("Scade il 12/11/2021")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 10
                }

                MouseArea {
                    id: click3
                    anchors.fill: parent
                }

            }

            DropShadow {
                anchors.fill: promo3
                cached: true
                horizontalOffset: 0
                verticalOffset: 0
                radius: 7
                samples: 16
                color: "#80000000"
                source: promo3
            }

            Rectangle {
                id: promo4
                width: swipeView.width/2 - 20
                height: 250
                radius: 7
                y: 270
                x: swipeView.width*3/4 - width/2

                Text {
                    y: 11
                    width: parent.width
                    text: qsTr("BACARO RISORTO")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 11
                }

                Image {
                    x: parent.width - width - 2
                    y: 2
                    width: 30
                    height: 30
                    source: "qrc:/images/elisa.png"
                }

                Rectangle {
                    x: parent.width/2 - width/2
                    y: 35
                    width: parent.width - 20
                    border.color: "#d9d9d9"
                    height: 2
                    border.width: 1
                    Rectangle {
                        y: 1
                        width: parent.width
                        color: "#ffffff"
                        height: 1
                    }
                }

                Image {
                    x: parent.width/2 - width/2
                    y: 45
                    width: 90
                    height: 90
                    source: "qrc:/images/food.png"
                }

                Text {
                    x: 20
                    y: 155
                    width: parent.width - 30
                    text: qsTr("Sconto del 10% sul pranzo")
                    wrapMode: Label.WordWrap
                    font.pixelSize: 16
                    font.bold: true
                }

                Text {
                    y: parent.height - 30
                    width: parent.width
                    text: qsTr("Scade il 12/09/2021")
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 10
                }

                MouseArea {
                    id: click4
                    anchors.fill: parent
                }

            }

            DropShadow {
                anchors.fill: promo4
                cached: true
                horizontalOffset: 0
                verticalOffset: 0
                radius: 7
                samples: 16
                color: "#80000000"
                source: promo4
            }
        }
    }

    Connections {
        target: click1
        onClicked: popup.open()
    }

    Connections {
        target: click2
        onClicked: popup.open()
    }

    Connections {
        target: click3
        onClicked: popup.open()
    }

    Connections {
        target: close
        onClicked: popup.close()
    }
}
