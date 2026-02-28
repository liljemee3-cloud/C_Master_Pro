#include <stdio.h>

/* خوارزمية الطباعة المنظمة:
   1. ابدأ البرنامج.
   2. احجز حرفاً (char) ورقماً (int).
   3. اطبعهم باستخدام رموز التنسيق (Format Specifiers).
   4. استخدم \n للانتقال لسطر جديد (مثل الضغط على Enter).
*/

int main() {
    int my_age = 18;        // %d (Decimal)
    char my_rank = 'N';     // %c (Character) لرمز النمر

    printf("أهلاً بك يا نمر\n"); // \n تعني سطر جديد
    printf("رتبتك هي: %c\t وعمرك هو: %d\n", my_rank, my_age); // \t تعني مسافة كبيرة (Tab)

    return 0;
}
