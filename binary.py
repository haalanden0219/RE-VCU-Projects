buffer_1 = [59, 25, 89, 18, 63, 60, 32, 28, 95, 74, 11, 0]
encrypted_string_in_decimal = [107, 120, 42, 97, 72, 83, 82, 120, 107, 120, 42, 97]

# Convert buffer_1 to binary with leading zeros and join them
buffer_1_binary = ' '.join(format(number, '08b') for number in buffer_1)

# Convert encrypted_string_in_decimal to binary with leading zeros and join them
encrypted_string_in_binary = ' '.join(format(number, '08b') for number in encrypted_string_in_decimal)

print( buffer_1_binary)
print(encrypted_string_in_binary)
