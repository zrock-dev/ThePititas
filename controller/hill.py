import cv2
import numpy
import controller.main as hill_method
from model.utils.constants import SYS_PATH


class Hill:
    new_array_color = None

    def encrypt(self, image_path):
        img = cv2.imread(image_path, 0)
        self.new_array_color = hill_method.encrypt(hill_method.key, img)
        arr = numpy.array(self.new_array_color, dtype=numpy.int8)
        encrypted_image_path = f'{SYS_PATH}/model/encrypted_image.png'
        cv2.imwrite(encrypted_image_path, arr)
        return encrypted_image_path


    def decrypt(self):
        decrypt_array = hill_method.decrypt(hill_method.key, self.new_array_color)
        arr2 = numpy.array(decrypt_array, dtype=numpy.int8)
        decrypted_image_path = f'{SYS_PATH}/model/decrypted_image.png'
        cv2.imwrite(decrypted_image_path, arr2)

        return decrypted_image_path
