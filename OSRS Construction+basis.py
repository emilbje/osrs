import pyautogui
import keyboard
import time

# Define the coordinates and time intervals
coordinates = [(100, 100), (200, 200), (300, 300)]
planks = (1711, 735)
butler = (880, 500)
pay = (260, 910)
rc_table = (910, 540)
build = (910, 590)
mahog_table = (990, 495)
#rc_table
remove = (910, 590)
yes = pay


time_intervals = [1, 2, 3]  # in seconds

def build_remove():
    pyautogui.rightClick(rc_table)
    time.sleep(1)
    pyautogui.click(build)
    time.sleep(1)
    pyautogui.click(mahog_table)
    time.sleep(1)
    pyautogui.rightClick(rc_table)
    time.sleep(1)
    pyautogui.click(remove)
    time.sleep(1)
    pyautogui.click(pay)

# Define the function to start the script
def start_clicker():
    while True:
        if keyboard.is_pressed('b'):  # press "b" to stop the script
            break
        pyautogui.click(planks)
        time.sleep(1)
        pyautogui.click(butler)
        time.sleep(1)
        pyautogui.click(pay)
        time.sleep(1)
        for i in range(3):
            build_remove()

# Call the function to start the script
start_clicker()