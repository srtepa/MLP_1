from random import choice
import tkinter as tk
import requests
from bs4 import BeautifulSoup

#Парсер новостей с заголовками и текстом в GUI
#Приложение на основе requests + BeautifulSoup,
#отображающее список заголовков новостей в GUI.
#При выборе — показ текста статьи.

URLs = [
    "Lenta.ru",
    "Habr.com",
    "Ria.ru",
    "Cnews.ru"
]

def get_news():
    return requests.get(choice(URLs))

main_window = tk.Tk()
main_window.title("Парсинг новостей")

window_width = 800
window_height = 600

main_window.geometry(f'{window_width}x{window_height}')

screen_width = main_window.winfo_screenwidth()
screen_height = main_window.winfo_screenheight()

center_x = int(screen_width / 2 - window_width / 2)
center_y = int(screen_height / 2 - window_height / 2)

main_window.geometry(f'{window_width}x{window_height}+{center_x}+{center_y}')

txtbox = tk.Text(main_window)
txtbox.pack(side="right", fill="both", expand=True)

listbox = tk.Listbox(main_window)
listbox.pack(side="left", fill="both", expand=True)

btn = tk.Button(main_window, text = "Парсинг", command=get_news)
btn.pack(pady=10)



main_window.mainloop()