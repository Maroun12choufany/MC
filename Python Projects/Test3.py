import tkinter as tk
from tkinter import messagebox


class EventManagementSystem:
    def __init__(self, root):
        self.root = root
        self.root.title(" Event Management System")

        self.events = []
        self.users = []
        self.current_user = None

        self.create_login_screen()

    def create_login_screen(self):
        self.clear_screen()
        tk.Label(self.root, text="Username").grid(row=0, column=0)
        tk.Label(self.root, text="Password").grid(row=1, column=0)

        self.username_entry = tk.Entry(self.root)
        self.password_entry = tk.Entry(self.root, show="*")
        self.username_entry.grid(row=0, column=1)
        self.password_entry.grid(row=1, column=1)

        tk.Button(self.root, text="Login", command=self.login).grid(row=2, column=0)
        tk.Button(self.root, text="Register", command=self.register).grid(row=2, column=1)

    def create_main_screen(self):
        self.clear_screen()
        tk.Label(self.root, text=f"Welcome, {self.current_user['username']}").grid(row=0, column=0)

        tk.Button(self.root, text="Create Event", command=self.create_event).grid(row=1, column=0)
        tk.Button(self.root, text="View Events", command=self.view_events).grid(row=1, column=1)
        tk.Button(self.root, text="Logout", command=self.logout).grid(row=2, column=0)

    def create_event(self):
        self.clear_screen()
        tk.Label(self.root, text="Event Name").grid(row=0, column=0)
        tk.Label(self.root, text="Event Date").grid(row=1, column=0)
        tk.Label(self.root, text="Event Location").grid(row=2, column=0)

        self.event_name_entry = tk.Entry(self.root)
        self.event_date_entry = tk.Entry(self.root)
        self.event_desc_entry = tk.Entry(self.root)

        self.event_name_entry.grid(row=0, column=1)
        self.event_date_entry.grid(row=1, column=1)
        self.event_desc_entry.grid(row=2, column=1)

        tk.Button(self.root, text="Create", command=self.add_event).grid(row=3, column=0)
        tk.Button(self.root, text="Back", command=self.create_main_screen).grid(row=3, column=1)

    def view_events(self):
        self.clear_screen()
        for i, event in enumerate(self.events):
            tk.Label(self.root, text=f"{event['name']} - {event['date']}").grid(row=i, column=0)
            tk.Button(self.root, text="Edit", command=lambda e=event: self.edit_event(e)).grid(row=i, column=1)
            tk.Button(self.root, text="Delete", command=lambda e=event: self.delete_event(e)).grid(row=i, column=2)
        tk.Button(self.root, text="Back", command=self.create_main_screen).grid(row=len(self.events), column=0)

    def edit_event(self, event):
        self.clear_screen()
        tk.Label(self.root, text="Event Name").grid(row=0, column=0)
        tk.Label(self.root, text="Event Date").grid(row=1, column=0)
        tk.Label(self.root, text="Event Location").grid(row=2, column=0)

        self.event_name_entry = tk.Entry(self.root)
        self.event_date_entry = tk.Entry(self.root)
        self.event_desc_entry = tk.Entry(self.root)

        self.event_name_entry.insert(0, event['name'])
        self.event_date_entry.insert(0, event['date'])
        self.event_desc_entry.insert(0, event['Location'])

        self.event_name_entry.grid(row=0, column=1)
        self.event_date_entry.grid(row=1, column=1)
        self.event_desc_entry.grid(row=2, column=1)

        tk.Button(self.root, text="Update", command=lambda: self.update_event(event)).grid(row=3, column=0)
        tk.Button(self.root, text="Back", command=self.view_events).grid(row=3, column=1)

    def add_event(self):
        try:
            name = self.event_name_entry.get()
            date = self.event_date_entry.get()
            description = self.event_desc_entry.get()

            if not name or not date or not description:
                raise ValueError("All fields are required")

            event = {
                'name': name,
                'date': date,
                'location': description,
                'creator': self.current_user['username']
            }
            self.events.append(event)
            messagebox.showinfo("Success", "Event created successfully")
            self.create_main_screen()
        except Exception as e:
            messagebox.showerror("Error", str(e))

    def update_event(self, event):
        try:
            event['name'] = self.event_name_entry.get()
            event['date'] = self.event_date_entry.get()
            event['Location'] = self.event_desc_entry.get()

            if not event['name'] or not event['date'] or not event['Location']:
                raise ValueError("All fields are required")

            messagebox.showinfo("Success", "Event updated successfully")
            self.view_events()
        except Exception as e:
            messagebox.showerror("Error", str(e))

    def delete_event(self, event):
        self.events.remove(event)
        messagebox.showinfo("Success", "Event deleted successfully")
        self.view_events()

    def login(self):
        username = self.username_entry.get()
        password = self.password_entry.get()

        user = next((user for user in self.users if user['username'] == username and user['password'] == password),
                    None)
        if user:
            self.current_user = user
            self.create_main_screen()
        else:
            messagebox.showerror("Error", "Invalid username or password")

    def register(self):
        self.clear_screen()
        tk.Label(self.root, text="Username").grid(row=0, column=0)
        tk.Label(self.root, text="Password").grid(row=1, column=0)

        self.reg_username_entry = tk.Entry(self.root)
        self.reg_password_entry = tk.Entry(self.root, show="*")
        self.reg_username_entry.grid(row=0, column=1)
        self.reg_password_entry.grid(row=1, column=1)

        tk.Button(self.root, text="Register", command=self.add_user).grid(row=2, column=0)
        tk.Button(self.root, text="Back", command=self.create_login_screen).grid(row=2, column=1)

    def add_user(self):
        try:
            username = self.reg_username_entry.get()
            password = self.reg_password_entry.get()

            if not username or not password:
                raise ValueError("All fields are required")

            if any(user['username'] == username for user in self.users):
                raise ValueError("Username already exists")

            user = {
                'username': username,
                'password': password
            }
            self.users.append(user)
            messagebox.showinfo("Success", "User registered successfully")
            self.create_login_screen()
        except Exception as e:
            messagebox.showerror("Error", str(e))

    def logout(self):
        self.current_user = None
        self.create_login_screen()

    def clear_screen(self):
        for widget in self.root.winfo_children():
            widget.destroy()


if __name__ == "__main__":
    root = tk.Tk()
    app = EventManagementSystem(root)
    root.mainloop()