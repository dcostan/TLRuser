import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtLocation 5.9
import QtPositioning 5.9

Page {
    width: stackView.width
    height: stackView.height

    header: ToolBar {
        Material.elevation: 0
        Material.primary: Material.Pink
        contentHeight: toolButton.implicitHeight

        Label {
            text: qsTr("Mappa")
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

        Text {
            width: popup.width - 20
            y: 40
            text: qsTr("FILTRI")
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }

        ListView {
            width: parent.width
            height: 100
            x: 0
            y: 100
            model: [ ["Tutti i negozi TLR", "tlricon"], ["I miei negozi", "filippopicon"], ["I negozi dei tuoi amici", "profile"] ]
            delegate: RadioDelegate {
                text: modelData[0]
                leftPadding: 70
                width: parent.width
                checked: index == 0
                Image {
                    x: 15
                    y: parent.height/2 - height/2
                    width: 35
                    height: 35
                    source: "qrc:/images/" + modelData[1] + ".png"
                }
            }
        }

        Button {
            id: close
            x: popup.width/2 - width/2
            y: 310
            text: qsTr("Applica")
        }
    }

    Map {
        id: mapview
        zoomLevel: 14
        plugin: mapPlugin
        width: parent.width
        height: parent.height + 20
        center {
            // Padova
            latitude: 45.406
            longitude: 11.877
        }

        MapItemView{
            model: markerModel
            delegate: mapcomponent
        }

        Component.onCompleted: {
            markerModel.addMarker(QtPositioning.coordinate(45.402, 11.871))
            markerModel.addMarker(QtPositioning.coordinate(45.406, 11.877))
        }

        Rectangle {
            x: swipeView.width/2 - width/2
            y: 10
            radius: 15
            width: swipeView.width - 20
            height: 50

            TextInput {
                x: 60
                y: parent.height/2 - height/2
                width: parent.width - 70

                property string placeholderText: "Cerca qui"

                Text {
                    text: parent.placeholderText
                    color: "#aaa"
                    visible: !parent.text
                }
            }
            Image {
                x: 20
                y: parent.height/2 - height/2
                width: 20
                height: 20
                source: "qrc:/images/filtri.png"
                MouseArea {
                    id: toolButton
                    anchors.fill: parent
                }
            }
        }
    }

    Component {
        id: mapcomponent
        MapQuickItem {
            id: marker
            anchorPoint.x: image.width/4
            anchorPoint.y: image.height + canvas.height
            coordinate: position

            sourceItem: Item {
                Canvas {
                    id: canvas
                    width: 250
                    height: 230
                    antialiasing: true
                    visible: false

                    property int radius: 6
                    property int rectx: image.width/2
                    property int recty: 0
                    property int rectWidth: width - image.width/2
                    property int rectHeight: height - 50
                    property color strokeStyle:  Qt.darker(fillStyle, 1.4)
                    property color fillStyle: "#ffffff" // purple
                    property int lineWidth: 0
                    property bool fill: true
                    property bool stroke: true
                    property real alpha: 1.0

                    onPaint: {
                        var ctx = getContext("2d");
                        ctx.save();
                        ctx.clearRect(0,0,canvas.width, canvas.height);
                        ctx.strokeStyle = canvas.strokeStyle;
                        ctx.lineWidth = canvas.lineWidth
                        ctx.fillStyle = canvas.fillStyle
                        ctx.globalAlpha = canvas.alpha
                        ctx.beginPath();
                        ctx.moveTo(rectx+radius,recty);                 // top side
                        ctx.lineTo(rectx+rectWidth-radius,recty);
                        // draw top right corner
                        ctx.arcTo(rectx+rectWidth,recty,rectx+rectWidth,recty+radius,radius);
                        ctx.lineTo(rectx+rectWidth,recty+rectHeight-radius);    // right side
                        // draw bottom right corner
                        ctx.arcTo(rectx+rectWidth,recty+rectHeight,rectx+rectWidth-radius,recty+rectHeight,radius);
                        ctx.lineTo(rectx+radius+25,recty+rectHeight);              // bottom side
                        // draw bottom left corner
                        //ctx.arcTo(rectx,recty+rectHeight,rectx,recty+rectHeight-radius,radius);
                        ctx.lineTo(rectx,recty+radius+rectHeight+35);                 // left side
                        // draw top left corner
                        ctx.arcTo(rectx,recty,rectx+radius,recty,radius);
                        ctx.closePath();
                        if (canvas.fill)
                            ctx.fill();
                        if (canvas.stroke)
                            ctx.stroke();
                        ctx.restore();
                    }

                    Image {
                        x: parent.rectx + 20
                        y: parent.recty + 16
                        width: 30
                        height: 30
                        source: "qrc:/images/shop1.png"
                    }

                    Text {
                        x: parent.rectx + 20
                        y: parent.recty + 20
                        width: parent.rectWidth - 30
                        text: qsTr("Moda Sport")
                        font.bold: true
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Label.WordWrap
                        font.pixelSize: 17
                    }

                    Text {
                        x: parent.rectx + 20
                        y: parent.recty + 60
                        width: parent.rectWidth - 30
                        text: qsTr("Rivenditore storico di attrezzatura e abbigliamento per un'ampia varietà di sport e attività all'aperto.")
                        wrapMode: Label.WordWrap
                        font.pixelSize: 12
                    }

                    Text {
                        x: parent.rectx + 20
                        y: parent.recty + 125
                        width: parent.rectWidth - 30
                        text: qsTr("Il <b>93%</b> degli utenti TeLoRaccomanda")
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Label.WordWrap
                        font.pixelSize: 14
                    }
                }
                Image {
                    id: image
                    y: canvas.height
                    source: "qrc:/images/marker.png"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: canvas.visible = !canvas.visible
                    }
                }
            }
        }
    }

    Connections {
        target: toolButton
        onClicked: popup.open()
    }

    Connections {
        target: close
        onClicked: popup.close()
    }
}
