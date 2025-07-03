# 
# TestProjectShift

iOS-приложение с экраном регистрации и основным экраном. Проект выполнен с использованием **UIKit** и архитектурного паттерна **MVP**.

## 📱 Функциональность

- Экран регистрации с полями:
  - Имя
  - Фамилия
  - Пароль
- Валидация:
  - Имя — минимум 2 символов
  - Фамилия — минимум 2 символов
  - Пароль — минимум 6 символов, одна заглавная буква, цифра и специальный символ
- Сохранение данных через `UserDefaults`
- Переход на главный экран после успешной регистрации

## 🧱 Архитектура

- Используется шаблон **MVP**:
  - `View` — отображает данные и передаёт действия пользователя
  - `Presenter` — содержит бизнес-логику и обрабатывает ввод
  - `Model` — структура данных (валидация, пользователь)

## 📂 Структура проекта
TestProjectShift/
│
├── App/                # AppDelegate, SceneDelegate
├── Modules/
│   ├── Registration/   # Экран регистрации (View, Presenter, Model)
│   └── Main/           # Главный экран
├── Resources/          # Assets и LaunchScreen
└── Supporting Files/   # Info.plist и другие вспомогательные файлы

## 🚀 Запуск проекта

1. Клонируйте репозиторий:
   ```bash
   git clone git@github.com:rusja11-87/TestProjectShift.git
   
2. Откройте .xcodeproj файл в Xcode
3. Запустите на симуляторе или устройстве

⠀
## ✅ Требования
* Xcode 15+
* iOS 15.0+

⠀
## 🛠️ Возможности для доработки
* Интеграция с API
* Авторизация с сохранением токена
* Локализация интерфейса
* Unit-тесты

⠀
## 📸 Скриншоты
<img src="https://github.com/user-attachments/assets/62853bb7-8e7a-41af-9ad3-0beb82afca62" width="400" height="868">
<img src="https://github.com/user-attachments/assets/dfd21495-2a22-405f-b517-e0a73d8d850c" width="400" height="868">
<img src="https://github.com/user-attachments/assets/79471102-ae2c-4e2a-9b4b-ed53e5b2aab7" width="400" height="868">
<img src="https://github.com/user-attachments/assets/74d4ec47-c445-4e71-996a-f5a3c1551ba0" width="400" height="868">
<img src="https://github.com/user-attachments/assets/8730e541-8de6-4fd7-9148-e93ad072da77" width="400" height="868">



## 📄 Лицензия

Проект создан в образовательных целях. Используйте свободно.

