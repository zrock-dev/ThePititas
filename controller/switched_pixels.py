import cv2
import numpy
import controller.main as pixel_method
from model.utils.constants import SYS_PATH


class PixelSwitch:
    encrypted_image_path = None

    def encrypt(self, image_path):
        img2 = cv2.imread(image_path)
        encryptByPixel = pixel_method.encryptByPixel(pixel_method.key, img2)
        arrByPixel = numpy.array(encryptByPixel, dtype=numpy.int8)
        self.image_array = arrByPixel

        self.encrypted_image_path = f'{SYS_PATH}/model/encrypted_image.png'
        cv2.imwrite(self.encrypted_image_path, arrByPixel)

        cv2.imshow("Image", arrByPixel)
        cv2.waitKey()
        cv2.destroyAllWindows()
        return self.encrypted_image_path


    def decrypt(self):
        imageEncrypt = cv2.imread(self.encrypted_image_path)
        encryptByPixel = pixel_method.decryptByPixel(pixel_method.key, imageEncrypt)
        arrByPixel2 = numpy.array(encryptByPixel, dtype=numpy.int8)

        decrypted_image_path = f'{SYS_PATH}/model/decrypted_image.png'
        cv2.imwrite(decrypted_image_path, arrByPixel2)

        cv2.imshow("Image", arrByPixel2)
        cv2.waitKey()
        cv2.destroyAllWindows()
        return decrypted_image_path
