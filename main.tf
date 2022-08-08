from random import randint
easy_mode = 10
hard_mode = 5

def difficult():
    mode = input("Select the difficulty level, 'easy' or 'hard': ").lower()
    if mode == "easy":
        return easy_mode
    else:
        return hard_mode

def compare(guess, target, turns):
    if guess > target:
        print("Too High")
        return turns - 1
    elif guess < target:
        print("Too Low")
        return turns - 1
    else:
        print(f"You got it, the answer is {target}.")

def game():
    print("Welcom to the Number Guessing Game.")
    print("I'm thinking of a number between 1 and 100.")
    guess = int(input("Guess the number between 1 and 100."))
    target = randint(1,100)
    turns = difficult()

    guess = 0
    while guess != target:
        print(f"You have {turns} attempts to guess.")
        guess = int(input("Make a guess: "))
        turns = compare(guess, target, turns)

        if turns == 0:
            print(f"Game over. You lose, the answer is {target}.")
            return
        elif guess != target:
            print("Guess Again.")

game()
