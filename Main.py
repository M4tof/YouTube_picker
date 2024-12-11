import tkinter as tk
import clips

environment = clips.Environment()
environment.load('Rules.clp')
environment.load('Facts.clp')

environment.reset()
print("Rules and Facts loaded:")

j = 0
for rule in environment.rules():
    print(f"{j}: {rule}")
    j = j + 1
    
i = 0
for fact in environment.facts():
    print(f"{i}: {fact}")
    i = i + 1


print("\n---\nMain loop start: terminal for debug\n---\n")
if __name__ == "__main__":

    root = tk.Tk()
    root.title("So you want to watch YouTube")
    root.config(bg="#262626")
    root.geometry("650x500")

    root.resizable(False, False)
    root.mainloop()
