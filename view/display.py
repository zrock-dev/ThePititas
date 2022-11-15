import tkinter as tk

from view.image_selection_screen import ImageSelectionScreen
from view.cipher_decipher_screen import CipherDecipherScreen
from view.utils.constants import (WINDOW_TITLE, WINDOW_HEIGHT, WINDOW_WIDTH, BG_COLOR)


class Display:

    def __init__(self):
        self.window = tk.Tk()
        self.config_window()

        # Displays
        self.image_selection_frame = ImageSelectionScreen(self.window, self)

    def config_window(self):
        window = self.window
        window.title(WINDOW_TITLE)
        window.geometry(f'{WINDOW_WIDTH}x{WINDOW_HEIGHT}')
        window.configure(bg=BG_COLOR)
        window.rowconfigure(0, weight=10)
        window.columnconfigure(0, weight=10)

    def switch_to_image_selection_screen(self):
        self.image_selection_frame.frame.tkraise()

    def swittch_to_cipher_decipher_screen(self, image, image_path):
        print(f"switch to {image.name}")
        frame = CipherDecipherScreen(self.window, self, image, image_path)
        frame.frame.tkraise()

    def clear_frame(self):
        for widget in self.window.winfo_children():
            widget.destroy()

    def main(self):
        self.window.mainloop()


display = Display()
display.main()
