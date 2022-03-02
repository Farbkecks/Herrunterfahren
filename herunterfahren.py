import subprocess
from time import sleep


class Herrunterfahren:
    def __init__(self):
         self.min = 0
         self.user_input()
         self.countdwon()
    
    def user_input(self):
        while True:
            self.show_start()
            try:
                self.min = int(input("Die Zeit in Minuten in denen der PC Herunterfahren soll: "))
                return
            except ValueError:
                print("Nur ganze Zahlen eingeben!")
                sleep(2)
                subprocess.call("cls", shell=True)

    
    def show_start(self):
        for i in range(9):
            print(f"{i+1}h = {(i+1)*60}min")
        print("-------------")
    
    def shutdown(self):
        subprocess.call("shutdown -s")
        print("Herrunterfahren")
        exit()
    
    def countdwon(self):
        for _ in range(self.min):
            for i in range(60):
                subprocess.call("cls", shell=True)
                print(f"Herrunterfahren in {self.min - 1} Minute und {60-i} Sekunden \n\nAchtung dieses Fenster muss offen sein, sonnst bricht der Vorgang ab")
                sleep(1)
        self.shutdown()


if __name__ == "__main__":      
    Herrunterfahren()