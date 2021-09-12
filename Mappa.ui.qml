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

        ToolButton {
            id: toolButton
            text: "\u2632"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
        }

        Label {
            text: qsTr("MAPPA")
            anchors.centerIn: parent
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
                    height: 200
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

                    Text {
                        x: parent.rectx + 20
                        y: parent.recty + 15
                        width: parent.rectWidth - 30
                        text: qsTr("Orario")
                        wrapMode: Label.WordWrap
                        font.pixelSize: 14
                    }

                    Text {
                        x: parent.rectx + parent.rectWidth - 80
                        y: parent.recty + parent.rectHeight - 25
                        width: parent.rectWidth - 30
                        text: qsTr("03/06/2021")
                        wrapMode: Label.WordWrap
                        font.pixelSize: 11
                        color: "#d9d9d9"
                    }
                }
                Image {
                    id: image
                    y: canvas.height
                    source: "qrc:/images/marker.png"
                    MouseArea {
                        anchors.fill: parent
                        onClicked: canvas.visible = true
                    }
                }
            }
        }
    }
}
