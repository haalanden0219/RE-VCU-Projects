import ctypes

seeded_ints = [280491303 , 626398474 , 65378190 , 821524244, 1465218044 , 821971775, 895036163 , 1845157644 , 705984302]
decrypted_string = ''

hex_number1 = -0x5e
hex_number2 = 0x5e
hex_number3 = 0x21

for order in seeded_ints:
    decrypted_char = ctypes.c_char(order) + ctypes.c_char(order // hex_number2) * hex_number1 + hex_number3
    decrypted_string += decrypted_char

print("decrypted string: " , decrypted_string)