import random

while True:
    player_choice = input("Обрати камінь, ножиці або папір:").lower()
    if player_choice not in ['камінь', 'ножиці', 'папір']:
        print("Ви ввели неправильне значення. Оберіть варіант: камінь, ножиці або папір")
        continue

    computer_choice = random.choice(['камінь', 'ножиці', 'папір'])

    print(f"Вибір гравця:{player_choice}")
    print(f"Вибір комп'ютера:{computer_choice}")

    if player_choice == computer_choice:
        print("Нічия")
    elif (player_choice == 'камінь' and computer_choice == 'ножиці') or \
         (player_choice == 'ножиці' and computer_choice == 'папір') or \
         (player_choice == 'папір' and computer_choice == 'камінь'):
        print("Ви виграли")
    else:
        print("Ви програли")
