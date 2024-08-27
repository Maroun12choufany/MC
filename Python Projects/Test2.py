import tkinter as tk
from tkinter import ttk
from tkinter import messagebox

class User:
    def __init__(self, username, password):
        self.username = username
        self.password = password

class Event:
    def __init__(self, name, date, location):
        self.name = name
        self.date = date
        self.location = location
        self.reservations = []

class EventManagement:
    def __init__(self, root):
        self.root = root
        self.root.title(" Event Management System")
        self.users = []
        self.events = []
        self.current_user = None
        self.selected_event_index = None
        self.create_login_page()

    def create_login_page(self):
        self.clear_frame()
        self.frame = ttk.Frame(self.root, padding="10")
        self.frame.grid(row=0, column=0, sticky=(tk.W, tk.E, tk.N, tk.S))

        self.username_label = ttk.Label(self.frame, text="Username:")
        self.username_label.grid(row=0, column=0, sticky=tk.W, pady=2)
        self.username_entry = ttk.Entry(self.frame)
        self.username_entry.grid(row=0, column=1, sticky=(tk.W, tk.E), pady=2)

        self.password_label = ttk.Label(self.frame, text="Password:")
        self.password_label.grid(row=1, column=0, sticky=tk.W, pady=2)
        self.password_entry = ttk.Entry(self.frame, show="*")
        self.password_entry.grid(row=1, column=1, sticky=(tk.W, tk.E), pady=2)

        self.login_button = ttk.Button(self.frame, text="Login", command=self.login)
        self.login_button.grid(row=2, column=0, pady=10)

        self.register_button = ttk.Button(self.frame, text="Register", command=self.create_register_page)
        self.register_button.grid(row=2, column=1, pady=10)

    def create_register_page(self):
        self.clear_frame()
        self.frame = ttk.Frame(self.root, padding="10")
        self.frame.grid(row=0, column=0, sticky=(tk.W, tk.E, tk.N, tk.S))

        self.new_username_label = ttk.Label(self.frame, text="New Username:")
        self.new_username_label.grid(row=0, column=0, sticky=tk.W, pady=2)
        self.new_username_entry = ttk.Entry(self.frame)
        self.new_username_entry.grid(row=0, column=1, sticky=(tk.W, tk.E), pady=2)

        self.new_password_label = ttk.Label(self.frame, text="New Password:")
        self.new_password_label.grid(row=1, column=0, sticky=tk.W, pady=2)
        self.new_password_entry = ttk.Entry(self.frame, show="*")
        self.new_password_entry.grid(row=1, column=1, sticky=(tk.W, tk.E), pady=2)

        self.register_confirm_button = ttk.Button(self.frame, text="Confirm Register", command=self.register)
        self.register_confirm_button.grid(row=2, column=0, columnspan=2, pady=10)

    def create_main_page(self):
        self.clear_frame()
        self.frame = ttk.Frame(self.root, padding="10")
        self.frame.grid(row=0, column=0, sticky=(tk.W, tk.E, tk.N, tk.S))

        self.welcome_label = ttk.Label(self.frame, text=f"Welcome, {self.current_user.username}!")
        self.welcome_label.grid(row=0, column=0, columnspan=2, pady=10)

        self.event_name_label = ttk.Label(self.frame, text="Event Name:")
        self.event_name_label.grid(row=1, column=0, sticky=tk.W, pady=2)
        self.event_name_entry = ttk.Entry(self.frame)
        self.event_name_entry.grid(row=1, column=1, sticky=(tk.W, tk.E), pady=2)

        self.event_date_label = ttk.Label(self.frame, text="Event Date:")
        self.event_date_label.grid(row=2, column=0, sticky=tk.W, pady=2)
        self.event_date_entry = ttk.Entry(self.frame)
        self.event_date_entry.grid(row=2, column=1, sticky=(tk.W, tk.E), pady=2)

        self.event_location_label = ttk.Label(self.frame, text="Event Location:")
        self.event_location_label.grid(row=3, column=0, sticky=tk.W, pady=2)
        self.event_location_entry = ttk.Entry(self.frame)
        self.event_location_entry.grid(row=3, column=1, sticky=(tk.W, tk.E), pady=2)

        self.add_event_button = ttk.Button(self.frame, text="Add Event", command=self.add_event)
        self.add_event_button.grid(row=4, column=0, pady=10)

        self.update_event_button = ttk.Button(self.frame, text="Update Event", command=self.update_event)
        self.update_event_button.grid(row=4, column=1, pady=10)

        self.delete_event_button = ttk.Button(self.frame, text="Delete Event", command=self.delete_event)
        self.delete_event_button.grid(row=5, column=0, pady=10)

        self.send_invitations_button = ttk.Button(self.frame, text="Send Invitations", command=self.send_invitations)
        self.send_invitations_button.grid(row=5, column=1, pady=10)

        self.reserve_event_button = ttk.Button(self.frame, text="Reserve Event", command=self.reserve_event)
        self.reserve_event_button.grid(row=6, column=0, pady=10)

        self.events_listbox = tk.Listbox(self.frame, height=10, width=50)
        self.events_listbox.grid(row=7, column=0, columnspan=2, pady=10)
        self.events_listbox.bind('<<ListboxSelect>>', self.on_select)

        self.update_listbox()

    def clear_frame(self):
        for widget in self.root.winfo_children():
            widget.destroy()

    def login(self):
        username = self.username_entry.get()
        password = self.password_entry.get()
        user = next((user for user in self.users if user.username == username and user.password == password), None)
        if user:
            self.current_user = user
            self.create_main_page()
        else:
            messagebox.showwarning("Login Error", "Invalid username or password.")

    def register(self):
        new_username = self.new_username_entry.get()
        new_password = self.new_password_entry.get()
        if new_username and new_password:
            if not any(user.username == new_username for user in self.users):
                self.users.append(User(new_username, new_password))
                messagebox.showinfo("Registration", "Registration successful. Please login.")
                self.create_login_page()
            else:
                messagebox.showwarning("Registration Error", "Username already exists.")
        else:
            messagebox.showwarning("Registration Error", "Please fill in all fields.")

    def add_event(self):
        name = self.event_name_entry.get()
        date = self.event_date_entry.get()
        location = self.event_location_entry.get()
        if name and date and location:
            event = Event(name, date, location)
            self.events.append(event)
            self.update_listbox()
            self.clear_event_entries()
        else:
            messagebox.showwarning("Input Error", "Please fill in all fields.")

    def update_event(self):
        if self.selected_event_index is not None:
            name = self.event_name_entry.get()
            date = self.event_date_entry.get()
            location = self.event_location_entry.get()
            if name and date and location:
                event = self.events[self.selected_event_index]
                event.name = name
                event.date = date
                event.location = location
                self.update_listbox()
                self.clear_event_entries()
                self.selected_event_index = None
            else:
                messagebox.showwarning("Input Error", "Please fill in all fields.")
        else:
            messagebox.showwarning("Selection Error", "Please select an event to update.")

    def delete_event(self):
        if self.selected_event_index is not None:
            del self.events[self.selected_event_index]
            self.update_listbox()
            self.clear_event_entries()
            self.selected_event_index = None
        else:
            messagebox.showwarning("Selection Error", "Please select an event to delete.")

    def send_invitations(self):
        if self.selected_event_index is not None:
            event = self.events[self.selected_event_index]
            print(f"Sending invitations for the event: {event.name} on {event.date} at {event.location}")
        else:
            messagebox.showwarning("Selection Error", "Please select an event to send invitations.")

    def reserve_event(self):
        if self.selected_event_index is not None:
            event = self.events[self.selected_event_index]
            if self.current_user.username not in event.reservations:
                event.reservations.append(self.current_user.username)
                messagebox.showinfo("Reservation", f"Reserved {event.name} for {self.current_user.username}.")
            else:
                messagebox.showwarning("Reservation Error", "You have already reserved this event.")
        else:
            messagebox.showwarning("Selection Error", "Please select an event to reserve.")

    def update_listbox(self):
        self.events_listbox.delete(0, tk.END)
        for event in self.events:
            self.events_listbox.insert(tk.END, f"{event.name} - {event.date} - {event.location}")

    def clear_event_entries(self):
        self.event_name_entry.delete(0, tk.END)
        self.event_date_entry.delete(0, tk.END)
        self.event_location_entry.delete(0, tk.END)

    def on_select(self, event):
        selected_indices = self.events_listbox.curselection()
        if selected_indices:
            self.selected_event_index = selected_indices[0]
            event = self.events[self.selected_event_index]
            self.event_name_entry.delete(0, tk.END)
            self.event_name_entry.insert(0, event.name)
            self.event_date_entry.delete(0, tk.END)
            self.event_date_entry.insert(0, event.date)
            self.event_location_entry.delete(0, tk.END)
            self.event_location_entry.insert(0, event.location)

if __name__ == "__main__":
    root = tk.Tk()
    app = EventManagement(root)
    root.mainloop()