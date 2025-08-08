# ✅ Flutter Task List App

Welcome to the **Flutter Task List App** — a sleek, interactive, and dynamic task manager built using Dart and Flutter.  
This app showcases task state transitions, date picking, and a beautiful UI that's clean and easy to use.

---
## 📋 Releases

|  Date        |  Version |  Download Link      |                                                            
|--------------|------------|-------------------|
| 2025-08-08   |  v1.0.0    | [📥 Download APK](https://github.com/USERNAME/REPO_NAME/releases/download/v1.0.0/app-release.apk) |

---
## ✨ Features

- 📝 Display a list of tasks in styled cards.
- 🟡 Visually changes each task based on its status:  
  - `Not Started`
  - `Started`
  - `Completed`
- 🚀 **Start Task** button for Not Started tasks.
- ✅ **Mark as Complete** button for Started tasks.
- 📅 Tap on start date to open a **Date Picker** (for Not Started & Started tasks).
- 🖊️ Edit icon appears only for tasks that are **Not Started**.
- 🔄 All state updates are managed cleanly using **Provider**.

---

## 📱 Demo

🎥 [Click here to watch the demo](https://drive.google.com/file/d/1K0GJ5eSqVik7-bTJLFl295_TKGiydoJU/view)

---

## 🛠️ Tech Stack

| Technology  | Description                     |
|-------------|---------------------------------|
| Flutter     | UI toolkit for building apps    |
| Dart        | Programming language            |
| Provider    | State management                |
| intl        | Date formatting                 |

---

## 📦 Installation

1. Clone the repo:

git clone https://github.com/NOURHAN02/List_task.git
cd task_list_app

## 🧠 Project Structure

```bash
lib/
│
├── core/
│   ├── helper/
│   ├── utils/
│   │   ├── color_app.dart
│   │   ├── style_app.dart
│   │   └── enums.dart
│   └── widget/
│
├── model/
│   └── task_model.dart
│
├── provider/
│   └── task_provider.dart
│
├── screens/
│   └── home_screen.dart
│
└── main.dart