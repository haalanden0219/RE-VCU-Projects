#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    time_t current_time = time(NULL);

    srand((unsigned)current_time); 

    int seeded_values[8]; 
    int answer[12];
    int buffer_values[12] = { 59, 25, 89, 18, 63, 60, 32, 28, 95, 74, 11, 0 };

    for (int i = 0; i < 8; ++i) {
        seeded_values[i] = rand(); 
    }
    for (int i = 0; i < 8; ++i) {
        seeded_values[i] = seeded_values[i] % 94 + 33; 
    }

    for (int i = 0; i < 12; ++i) {
        answer[i] = buffer_values[i] ^ seeded_values[i % 8];
       
    }
    printf("\n");

    FILE *file = fopen("correct_password.txt", "w");
    if (file == NULL) {
        fprintf(stderr, "Error opening file.\n");
        return 1; 

    for (int i = 0; i < 12; ++i) {
        fputc((char)answer[i], file);
    }

    fclose(file);

    return 0;
}
