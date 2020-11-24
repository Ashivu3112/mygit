import QtQml.Models 2.2
import QtQml 2.2
import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    id: window
    width: 1200
    height: 800
    title: qsTr("Qt Painter")
    color: "white"

    Canvas{
        id: canvas1
        height: 800
        width: 1200
        anchors.left: colorTools.right
        function clear(){
            var ctx = getContext('2d');
            ctx.reset()
            canvas1.requestPaint();
        }

        property int p1x: 0
        property int p1y: 0

        property int p2x: 0
        property int p2y: 0

        property int p3x: 0
        property int p3y: 0

        property int p4x: 0
        property int p4y: 0

        property int p5x: 0
        property int p5y: 0

        property int p6x: 0
        property int p6y: 0

        property int p7x: 0
        property int p7y: 0

        property int p8x: 0
        property int p8y: 0

        property int p9x: 0
        property int p9y: 0

        property int p10x: 0
        property int p10y: 0

        property color color: colorTools.paintColor
        anchors.fill: parent

        MultiPointTouchArea{

            anchors.fill: parent
            id: area


            maximumTouchPoints: 10
            minimumTouchPoints: 1
            touchPoints: [
                TouchPoint {id: point1},
                TouchPoint {id: point2},
                TouchPoint {id: point3},
                TouchPoint {id: point4},
                TouchPoint {id: point5},
                TouchPoint {id: point6},
                TouchPoint {id: point7},
                TouchPoint {id: point8},
                TouchPoint {id: point9},
                TouchPoint {id: point10}
            ]

            onPressed:{
                canvas1.p1x = point1.x
                canvas1.p1y = point1.y
                canvas1.p2x = point2.x
                canvas1.p2y = point2.y
                canvas1.p3x = point3.x
                canvas1.p3y = point3.y
                canvas1.p4x = point4.x
                canvas1.p4y = point4.y
                canvas1.p5x = point5.x
                canvas1.p5y = point5.y
                canvas1.p6x = point6.x
                canvas1.p6y = point6.y
                canvas1.p7x = point7.x
                canvas1.p7y = point7.y
                canvas1.p8x = point8.x
                canvas1.p8y = point8.y
                canvas1.p9x = point9.x
                canvas1.p9y = point9.y
                canvas1.p10x = point10.x
                canvas1.p10y = point10.y

            }

            onTouchUpdated:{
                canvas1.requestPaint();
            }
        }

        onPaint:{
            var ctx = getContext('2d');
            ctx.lineWidth = 5;
            ctx.beginPath();
            ctx.moveTo(p1x,p1y)
            p1x = point1.x
            p1y = point1.y
            ctx.strokeStyle = canvas1.color;
            ctx.lineTo(p1x,p1y)
            ctx.stroke();

            var ctx2 = getContext('2d');
            ctx2.lineWidth = 5;
            ctx2.beginPath();
            ctx2.moveTo(p2x, p2y)
            p2x = point2.x
            p2y = point2.y
            ctx2.strokeStyle = canvas1.color
            ctx2.lineTo(p2x, p2y)
            ctx2.stroke();

            var ctx3 = getContext('2d');
            ctx3.lineWidth = 5;
            ctx3.beginPath();
            ctx3.moveTo(p3x, p3y)
            p3x = point3.x
            p3y = point3.y
            ctx3.strokeStyle = canvas1.color
            ctx3.lineTo(p3x, p3y)
            ctx3.stroke();

            var ctx4 = getContext('2d');
            ctx4.lineWidth = 5;
            ctx4.beginPath();
            ctx4.moveTo(p4x, p4y)
            p4x = point4.x
            p4y = point4.y
            ctx4.strokeStyle = canvas1.color
            ctx4.lineTo(p4x, p4y)
            ctx4.stroke();

            var ctx5 = getContext('2d');
            ctx5.lineWidth=5;
            ctx5.beginPath();
            ctx5.moveTo(p5x, p5y)
            p5x=point5.x
            p5y=point5.y
            ctx5.strokeStyle = canvas1.color
            ctx5.lineTo(p5x, p5y)
            ctx5.stroke();

            var ctx6 = getContext('2d');
            ctx6.lineWidth = 5;
            ctx6.beginPath();
            ctx6.moveTo(p6x, p6y)
            p6x = point6.x
            p6y = point6.y
            ctx6.strokeStyle = canvas1.color
            ctx6.lineTo(p6x, p6y)
            ctx6.stroke();

            var ctx7 = getContext('2d');
            ctx7.lineWidth = 5;
            ctx7.beginPath();
            ctx7.moveTo(p7x, p7y)
            p7x = point7.x
            p7y = point7.y
            ctx7.strokeStyle = canvas1.color
            ctx7.lineTo(p7x, p7y)
            ctx7.stroke();

            var ctx8 = getContext('2d');
            ctx8.lineWidth = 5;
            ctx8.beginPath();
            ctx8.moveTo(p8x, p8y)
            p8x = point8.x
            p8y = point8.y
            ctx8.strokeStyle = canvas1.color
            ctx8.lineTo(p8x, p8y)
            ctx8.stroke();

            var ctx9 = getContext('2d');
            ctx9.lineWidth = 5;
            ctx9.beginPath();
            ctx9.moveTo(p9x, p9y)
            p9x = point9.x
            p9y = point9.y
            ctx9.strokeStyle = canvas1.color
            ctx9.lineTo(p9x, p9y)
            ctx9.stroke();

            var ctx10 = getContext('2d');
            ctx10.lineWidth = 5;
            ctx10.beginPath();
            ctx10.moveTo(p10x, p10y)
            p10x = point10.x
            p10y = point10.y
            ctx10.strokeStyle = canvas1.color
            ctx10.lineTo(p10x, p10y)
            ctx10.stroke();

        }
    }
    Drawer {
        id: drawer
        width: 50
        height: window.height
        dragMargin: 50
        Column{
            id: colorTools
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            property variant activeSquare: red
            property color paintColor: "black"
            spacing: 4
            Repeater {
                model: ["#fafad2","#fff8dc","#ecebbd","#FED600","#FBDB0C","#FFE600","#F7F700","#5DFC0A","#CDCD00","#8B8B00","#A2BC13","#B1DD27",
                    "#98B82A","#C0FF3E","#F08080","#FA8072","#E9967A","#FFA07A","#f75394","#ff4681","#cc6666","#FF7F50","#00BEFE","#009ACD",
                    "#00688B","#0000FE","#FFA500","#FF3333","red","#800000","#660000",
                    "#330000"]
                ColorSquare{
                    id: red
                    color: modelData
                    active: parent.paintColor === color
                    onClicked: {
                        parent.paintColor = color
                        drawer.close()
                    }
                }
            }
        }
    }

    Top_drawer{}

}
