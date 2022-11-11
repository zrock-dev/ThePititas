import tkinter as tk
from view.utils.constants import (WINDOW_HEIGHT, WINDOW_WIDTH, BG_COLOR, BUTTON_BG_COLOR)


class ImageSelectionScreen:
    # Images
    images = []
    IMAGE_WIDTH = 2
    IMAGE_HEIGHT = 2

    # Buttons
    buttons = []

    def __init__(self, window, display):
        self.display = display
        # Frame setup
        self.frame = tk.Frame(window,
                              height=WINDOW_HEIGHT,
                              width=WINDOW_WIDTH,
                              background=BG_COLOR,
                              padx=55,
                              pady=55)
        self.frame.grid(row=0, column=0)
        self.frame.grid_propagate(False)
        self.frame.columnconfigure(0, pad=50)
        self.frame.rowconfigure(2, pad=50)

        # tk.Label(self.frame, text="Select an image please").grid(row=0, column=0)
        self.load_images()
        self.grid_images()
        self.grid_buttons()

    def load_images(self):
        self.prepare_image("/home/fundacion/PycharmProjects/ThePititas/model/img_1.jpeg")
        self.prepare_image("/home/fundacion/PycharmProjects/ThePititas/model/img_2.jpeg")
        self.prepare_image("/home/fundacion/PycharmProjects/ThePititas/model/img_3.jpeg")
        self.prepare_image("/home/fundacion/PycharmProjects/ThePititas/model/img_4.jpeg")

    def prepare_image(self, image_path):
        image = tk.PhotoImage(file=image_path).subsample(self.IMAGE_WIDTH, self.IMAGE_HEIGHT)
        self.images.append(image)
        self.buttons.append(tk.Button(self.frame, text="Select", command=lambda: self.set_working_image(image)))

    def grid_images(self):
        _row = 0
        _column = 0
        for photo in self.images:
            tk.Label(self.frame, image=photo).grid(row=_row, column=_column, padx=5, pady=5)

            if _row == 2:
                _column += 1
                _row = 0
            else:
                _row += 2

    def grid_buttons(self):
        _row = 1
        _column = 0
        for button in self.buttons:
            button.grid(row=_row, column=_column)

            if _row == 3:
                _column += 1
                _row = 1
            else:
                _row += 2

    def set_working_image(self, image):
        self.display.swittch_to_cipher_decipher_screen(image)
