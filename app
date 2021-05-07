from tkinter import *
from tkinter import messagebox

window = Tk()
window.geometry("250x400+300+300")
window.resizable(0, 0)

data = StringVar()

# function defining

value = ""

A = 0

operator = ""


def plusclicked():
    global A
    global operator
    global value
    A = int(value)
    operator = "+"
    value = value + "+"
    data.set(value)


def minusclicked():
    global A
    global operator
    global value
    A = int(value)
    operator = "-"
    value = value + "-"
    data.set(value)


def crossclicked():
    global A
    global operator
    global value
    A = int(value)
    operator = "*"
    value = value + "*"
    data.set(value)


def devideclicked():
    global A
    global operator
    global value
    A = int(value)
    operator = "/"
    value = value + "/"
    data.set(value)


def btn7clicked():
    global value
    value = value+"7"
    data.set(value)


def btn8clicked():
    global value
    value = value+"8"
    data.set(value)


def btn9clicked():
    global value
    value = value+"9"
    data.set(value)


def btn0clicked():
    global value
    value = value+"0"
    data.set(value)


def btn1clicked():
    global value
    value = value+"1"
    data.set(value)


def btn2clicked():
    global value
    value = value+"2"
    data.set(value)


def btn3clicked():
    global value
    value = value+"3"
    data.set(value)


def btn4clicked():
    global value
    value = value+"4"
    data.set(value)


def btn5clicked():
    global value
    value = value+"5"
    data.set(value)


def btn6clicked():
    global value
    value = value+"6"
    data.set(value)


def btn13clicked():
    global value
    value = ""
    data.set(value)


def equalclicked():
    global A
    global operator
    global value
    value1 = value
    if operator == "+":
        x = int((value1.split("+")[1]))
        c = A + x
        data.set(c)
        value = str(c)
    elif operator == "-":
        x = int((value1.split("-")[1]))
        c = A - x
        data.set(c)
        value = str(c)
    elif operator == "*":
        x = int((value1.split("*")[1]))
        c = A * x
        data.set(c)
        value = str(c)
    elif operator == "/":
        x = int((value1.split("/")[1]))
        if x == 0:
            messagebox.showerror("ERROR", "Can't devided by zero")
        else:
            c = A / x
            data.set(c)
            value = str(c)


label = Label(
    window,
    text="label",
    anchor=SE,
    font=("Verdana", 20),
    textvariable=data,
    bg="#ffffff",
    fg="#000000"
)
label.pack(expand=True, fill="both")

# creating rows

buttonrow1 = Frame(window, bg="black")
buttonrow1.pack(expand=True, fill="both")

buttonrow2 = Frame(window, bg="black")
buttonrow2.pack(expand=True, fill="both")

buttonrow3 = Frame(window, bg="black")
buttonrow3.pack(expand=True, fill="both")

buttonrow4 = Frame(window, bg="#000000")
buttonrow4.pack(expand=True, fill="both")

# row1

btn1 = Button(
    buttonrow1,
    text="7",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn7clicked,

)
btn1.pack(side=LEFT, expand=True, fill="both")


btn2 = Button(
    buttonrow1,
    text="8",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn8clicked

)
btn2.pack(side=LEFT, expand=True, fill="both")

btn3 = Button(
    buttonrow1,
    text="9",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn9clicked
)
btn3.pack(side=LEFT, expand=True, fill="both")

btn4 = Button(
    buttonrow1,
    text="+",
    bg="grey",
    font=("Verdana", 18),
    border=0,
    command=plusclicked
)
btn4.pack(side=LEFT, expand=True, fill="both")

# row2

btn5 = Button(
    buttonrow2,
    text="4",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn4clicked

)
btn5.pack(side=LEFT, expand=True, fill="both")


btn6 = Button(
    buttonrow2,
    text="5",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn5clicked

)
btn6.pack(side=LEFT, expand=True, fill="both")

btn7 = Button(
    buttonrow2,
    text="6",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn6clicked

)
btn7.pack(side=LEFT, expand=True, fill="both")

btn8 = Button(
    buttonrow2,
    text="-",
    bg="grey",
    font=("Verdana", 23),
    border=0,
    command=minusclicked
)
btn8.pack(side=LEFT, expand=True, fill="both")

# row3

btn9 = Button(
    buttonrow3,
    text="1",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn1clicked

)
btn9.pack(side=LEFT, expand=True, fill="both")


btn10 = Button(
    buttonrow3,
    text="2",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn2clicked

)
btn10.pack(side=LEFT, expand=True, fill="both")

btn11 = Button(
    buttonrow3,
    text="3",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn3clicked

)
btn11.pack(side=LEFT, expand=True, fill="both")

btn12 = Button(
    buttonrow3,
    text="*",
    bg="grey",
    font=("Verdana", 20),
    border=0,
    command=crossclicked
)
btn12.pack(side=LEFT, expand=True, fill="both")

# row4

btn13 = Button(
    buttonrow4,
    text="C",
    bg="grey",
    font=("Verdana", 20),
    border=0,
    command=btn13clicked,
)
btn13.pack(side=LEFT, expand=True, fill="both")


btn14 = Button(
    buttonrow4,
    text="0",
    bg="grey",
    font=("Verdana", 22),
    border=0,
    command=btn0clicked

)
btn14.pack(side=LEFT, expand=True, fill="both")

btn15 = Button(
    buttonrow4,
    text="=",
    bg="grey",
    font=("Verdana", 19),
    border=0,
    command=equalclicked,
)
btn15.pack(side=LEFT, expand=True, fill="both")

btn16 = Button(
    buttonrow4,
    text="/",
    bg="grey",
    font=("Verdana", 23),
    border=0,
    command=devideclicked
)
btn16.pack(side=LEFT, expand=True, fill="both")
window.mainloop()
