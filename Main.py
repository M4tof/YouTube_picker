import tkinter as tk
import clips

# Load .clp files
def load_clips_files(environment):
    environment.load('Facts.clp')
    environment.load('Rules.clp')
    environment.reset()
    
    print("Rules and Facts loaded:\n")

    print("Rules:")
    for i, rule in enumerate(environment.rules()):
        print(f"{i}: {rule}")
    
    print("Facts:")
    for i, fact in enumerate(environment.facts()):
        print(f"{i}: {fact}")

# Load conversion values from file
def load_conversion_values(file_path):
    with open(file_path, 'r') as file:
        return {
            name.strip(): text.strip()
            for name, text in (line.split('=', 1) for line in file)
        }

# Functions
def convert(name):
    return conversion_values.get(name, name)

def clearWindow():
    question_label.pack_forget()
    for widget in answer_frame.winfo_children():
        widget.destroy()
    answer_frame.pack_forget()
    
def nextMove():
    if any("youtubeChannelName" in str(fact) for fact in environment.facts()):
        final_message = ""
        for fact in environment.facts():
            fact_str = str(fact)

            fact_parts = fact_str.split(")")
            final_message = ""
            for part in fact_parts:
                if "display" in part:
                    final_message = part.split("display")[1].strip().strip(" ()\"")
        
        finish(convert(final_message))

    else:
        ui_question()

def assert_answer(answer):
    for fact in environment.facts():
        fact_name = str(fact)
        factParts = fact_name.split(")")
        for part in factParts:
            if "name" in part:
                fact_name = part.split("name")[1].strip().strip(" ()\"")
                break

    if fact_name:
        environment.assert_string(f"({fact_name} {answer})")
        print(f"Added to knowledge: ({fact_name} {answer})")
    
    environment.run()
    nextMove()

def ui_question():
    global question_label, environment, answer_frame

    clearWindow()

    question_label = tk.Label(root,wraplength=550,font=("Arial",20),bg="#d61731",fg="white")
    question_label.pack(pady=10)

    answer_frame = tk.Frame(root, bg="#444444")
    answer_frame.pack(pady=10, fill=None, expand=False)
    
    for fact in environment.facts():
        fact_name = str(fact)
        Qs = ""
        As = []
        factParts = fact_name.split(")")
        for part in factParts:
            if "display" in part:
                Qs = part.split("display")[1].strip().strip(" ()\"")
            elif "answers" in part:
                As = part.split("answers")[1].strip().strip(" ()\"").split(" ")
        
    question_text = ""
    if Qs != "":
        question_text = convert(Qs)
        
    available_answers = []
    for answer in As:
        available_answers.append(convert(answer))

    if question_text:
        question_label.config(text=question_text)
        question_label.pack()
        
    if available_answers:
        print(f"Can be chosen: {available_answers}")
        for answer in As:
            button = tk.Button(answer_frame,text=convert(answer),
                                   command=lambda a=answer: assert_answer(a),
                                   font=("Arial", 15), bg="#c1c1c1", 
                                   fg="black", relief="raised", bd=2,
                               wraplength=400, justify="left", anchor="w")
            button.pack(side="top",fill="x",pady=4,padx=4)

def finish(finalChoice):
    global root
    for widget in root.winfo_children():
        widget.destroy()

    print("\nFINAL ANWSER => " + finalChoice)

    result_label = tk.Label(root, text="You should watch:", font=("Arial", 16, "bold"), bg="#262626", fg="white")
    result_label.pack(pady=20)

    youtuber_label = tk.Label(root, text=finalChoice, font=("Times New Roman", 20), bg="#262626", fg="#d61731")
    youtuber_label.pack(pady=10)


#Main loop
if __name__ == "__main__":

    environment = clips.Environment()
    load_clips_files(environment)

    conversion_values = load_conversion_values('conversion.txt')
    
    root = tk.Tk()
    root.title("So you want to watch YouTube")
    root.config(bg="#262626")
    root.geometry("650x500")

    question_label = tk.Label(root)
    answer_frame = tk.Frame(root)

    print("\n---\nMain loop start: terminal for debug\n---\n")
    environment.reset()
    environment.run()

    ui_question()

    root.resizable(False, False)
    root.mainloop()