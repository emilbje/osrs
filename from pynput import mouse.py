from pynput import mouse
import pyautogui

class MouseTracker:
    def __init__(self):
        # Create a label to display the mouse coordinates
        self.label = pyautogui.locateOnScreen('label.png')
        
    def on_move(self, x, y):
        # Update the label with the current mouse coordinates
        if self.label is not None:
            pyautogui.moveTo(self.label.left + 50, self.label.top - 20)
            pyautogui.write(f"({x}, {y})", font=('Arial', 16, 'bold'))

    def start(self):
        # Start tracking mouse movements
        with mouse.Listener(on_move=self.on_move) as listener:
            listener.join()

# Create an instance of the MouseTracker class and start it
tracker = MouseTracker()
tracker.start()