# TrekAgency.pro
# Configuration du projet Qt pour l'application TrekAgency

QT       += core gui sql

CONFIG   += c++17

# Nom de l'exécutable
TARGET = TrekAgency
TEMPLATE = app

# Fichiers sources et en-têtes
SOURCES += \
    main.cpp \
    DatabaseManager.cpp \
    ClientManager.cpp \
    TrekManager.cpp \
    ReservationManager.cpp \
    WeatherAPI.cpp

HEADERS += \
    DatabaseManager.h \
    ClientManager.h \
    TrekManager.h \
    ReservationManager.h \
    WeatherAPI.h

# Répertoire des ressources (icônes, images, etc.)
RESOURCES += resources/resources.qrc

# Dépendances supplémentaires
LIBS += -lmysqlclient # Pour MySQL

# Chemin des fichiers d'inclusion
INCLUDEPATH += /usr/include/mysql \
               $$PWD/include

# Chemin des bibliothèques
LIBS += -L/usr/lib -L/usr/lib/x86_64-linux-gnu

# Définir les règles de compilation pour Windows
win32: LIBS += -L"C:/Program Files/MySQL/MySQL Server 8.0/lib" \
               -llibmysql
win32: INCLUDEPATH += "C:/Program Files/MySQL/MySQL Server 8.0/include"

# Configuration des avertissements et de la sortie
QMAKE_CXXFLAGS += -Wall -Wextra -Wpedantic
