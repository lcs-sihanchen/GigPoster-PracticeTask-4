//: # Gig Poster - Practice Task 4
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport


/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![the-clash-no-grid](the-clash-no-grid.png "The Clash")
 ![the-clash-with-grid](the-clash-with-grid.png "The Clash")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let orange = Color(hue: 21, saturation: 76, brightness: 94, alpha: 100)
let blue = Color(hue: 201, saturation: 72, brightness: 85, alpha: 65)
let offWhite = Color(hue: 208, saturation: 1, brightness: 88, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your work below...

// Background
canvas.fillColor = orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// grid lines

canvas.lineColor = black
for a in 1...7 {
    canvas.drawLine(from: Point(x: 50*a, y: 0), to: Point(x: 50*a, y: 600))
}

for b in 1...11 {
    canvas.drawLine(from: Point(x: 0, y: 50*b), to: Point(x: 400, y: 50*b))
}

// White
canvas.drawShapesWithFill = false
canvas.borderColor = offWhite
canvas.translate(to: Point(x: 230, y: 170))
canvas.rotate(by: 45)

for k in 0...6 {
    if  k == 6 {
        canvas.drawShapesWithFill = true
        canvas.fillColor = offWhite
    }
canvas.drawRectangle(at: Point(x: 24*k, y: 24*k), width: 300-48*k, height: 300-48*k, borderWidth: 12)
    
 
}




//for y in stride(from: 90, to: 180, by: 45){
//    canvas.rotate(by: Degrees(y))
//for n in stride(from: 140, to: 20, by: -10){
//
//    if n % 20 == 0 {
//        canvas.fillColor = offWhite
//        canvas.drawRectangle(at: Point(x: 0, y: 0), width: n, height: n)
//    } else if n % 20 == 10 {
//        canvas.fillColor = orange
//        canvas.drawRectangle(at: Point(x: 0, y: 0), width: n, height: n)
//    }
//
//
//}
//}

// gridlines




/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 *Be sure to commit your work multiple times as you make progress on completing this task.*

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

