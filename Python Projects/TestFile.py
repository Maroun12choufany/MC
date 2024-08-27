import json
import os
import uuid
from datetime import datetime

# Directory to store event files
EVENT_DIR = 'events'
if not os.path.exists(EVENT_DIR):
    os.makedirs(EVENT_DIR)

# Function to create a new event
def create_event(name, date, description):
    event_id = str(uuid.uuid4())
    event = {
        'id': event_id,
        'name': name,
        'date': date,
        'description': description
    }
    with open(f"{EVENT_DIR}/{event_id}.json", 'w') as f:
        json.dump(event, f)
    return event_id

# Function to list all events
def list_events():
    event_files = [f for f in os.listdir(EVENT_DIR) if f.endswith('.json')]
    if not event_files:
        print("No events found.")
    else:
        for event_file in event_files:
            with open(f"{EVENT_DIR}/{event_file}", 'r') as f:
                event = json.load(f)
                print(f"Event ID: {event['id']}")
                print(f"Name: {event['name']}")
                print(f"Date: {event['date']}")
                print(f"Description: {event['description']}")
                print("-" * 40)

# Function to update an event
def update_event(event_id, name=None, date=None, description=None):
    event_file = f"{EVENT_DIR}/{event_id}.json"
    if os.path.exists(event_file):
        with open(event_file, 'r') as f:
            event = json.load(f)
        if name:
            event['name'] = name
        if date:
            event['date'] = date
        if description:
            event['description'] = description
        with open(event_file, 'w') as f:
            json.dump(event, f)
        print(f"Event with ID {event_id} has been updated.")
    else:
        print(f"Event with ID {event_id} not found.")

# Function to delete an event
def delete_event(event_id):
    event_file = f"{EVENT_DIR}/{event_id}.json"
    if os.path.exists(event_file):
        os.remove(event_file)
        print(f"Event with ID {event_id} has been deleted.")
    else:
        print(f"Event with ID {event_id} not found.")

# Main program loop
def main():
    while True:
        print("\nEvent Management System")
        print("1. Create Event")
        print("2. List Events")
        print("3. Update Event")
        print("4. Delete Event")
        print("5. Exit")
        choice = input("Enter your choice: ")

        if choice == '1':
            name = input("Enter event name: ")
            date = input("Enter event date (YYYY-MM-DD): ")
            description = input("Enter event description: ")
            try:
                datetime.strptime(date, '%Y-%m-%d')
                event_id = create_event(name, date, description)
                print(f"Event created with ID: {event_id}")
            except ValueError:
                print("Invalid date format. Please use YYYY-MM-DD.")

        elif choice == '2':
            list_events()

        elif choice == '3':
            event_id = input("Enter event ID to update: ")
            name = input("Enter new event name (leave blank to keep current): ")
            date = input("Enter new event date (YYYY-MM-DD, leave blank to keep current): ")
            description = input("Enter new event description (leave blank to keep current): ")
            update_event(event_id, name, date, description)

        elif choice == '4':
            event_id = input("Enter event ID to delete: ")
            delete_event(event_id)

        elif choice == '5':
            print("Exiting the program.")
            break

        else:
            print("Invalid choice. Please try again.")

if __name__ == "__main__":
    main()