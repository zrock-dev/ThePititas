import tkinter as tk
from view.utils.constants import (WINDOW_HEIGHT, WINDOW_WIDTH, BG_COLOR, BUTTON_BG_COLOR)
from controller import hill, switched_pixels


class CipherDecipherScreen:
    hill_method = hill.Hill()
    pixels_method = switched_pixels.PixelSwitch()
    is_hill = True

    scene_switch_button = None

    def __init__(self, window, display, image):
        self.display = display
        self.image = image
        self.output_label = image
        self.frame = tk.Frame(window,
                              height=WINDOW_HEIGHT,
                              width=WINDOW_WIDTH,
                              background=BUTTON_BG_COLOR)
        self.frame.grid(column=0, row=0)

        # Frame setup
        self.left_frame = tk.Frame(self.frame,
                                   height=WINDOW_HEIGHT / 2,
                                   width=WINDOW_WIDTH / 2,
                                   background=BUTTON_BG_COLOR)
        self.right_frame = tk.Frame(self.frame,
                                    height=WINDOW_HEIGHT / 2,
                                    width=WINDOW_WIDTH / 2,
                                    background=BUTTON_BG_COLOR)

        self.left_frame.grid(row=0, column=0)
        self.right_frame.grid(row=0, column=1)

        self.setup_left_frame()
        self.setup_right_frame()

    def setup_left_frame(self):
        tk.Label(self.left_frame, text="Original").grid(column=0, row=0)
        tk.Label(self.left_frame, image=self.image).grid(row=1, column=0)
        scene_switch_button = tk.Button(self.left_frame,
                                        text="Switch photo",
                                        command=lambda: self.switch_scene_button())
        scene_switch_button.grid(row=2, column=0)

    def switch_scene_button(self):
        self.display.switch_to_image_selection_screen()

    def setup_right_frame(self):
        image_frame = tk.Frame(self.right_frame,
                               height=self.right_frame.winfo_height() / 2,
                               width=self.right_frame.winfo_height() / 2,
                               background=BUTTON_BG_COLOR)
        image_frame.grid(column=0, row=0)

        tk.Label(image_frame, text="Processed").grid(column=0, row=0)
        self.output_label = tk.Label(image_frame, image=self.image)
        self.output_label.grid(row=1, column=0)

        tool_bar_frame = tk.Frame(self.right_frame,
                                  height=self.right_frame.winfo_height() / 2,
                                  width=self.right_frame.winfo_height() / 2,
                                  background=BUTTON_BG_COLOR)
        tool_bar_frame.grid(row=1, column=0)

        # cipher and decipher buttons
        tk.Button(tool_bar_frame, text="Cipher", command=lambda: self.cipher_button()).grid(column=0)
        tk.Button(tool_bar_frame, text="Decipher", command=lambda: self.decipher_button()).grid(column=1, row=0)

    def cipher_button(self):
        print("crypt me")
        # if self.is_hill:
        #     image = tk.PhotoImage(self.hill_method.encrypt())
        # else:
        #     image = tk.PhotoImage(self.hill_method.encrypt())
        #
        # self.output_label.configure(image=image)

    def decipher_button(self):
        print("decrypt me")
        # if self.is_hill:
        #     image = tk.PhotoImage(self.hill_method.decrypt())
        # else:
        #     image = tk.PhotoImage(self.hill_method.decrypt())
        #
        # self.output_label.configure(image=image)
