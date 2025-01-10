#ifndef DATABASEMANAGER_H
#define DATABASEMANAGER_H

#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlQuery>
#include <QtSql/QSqlError>
#include <QString>
#include <QDebug>

class DatabaseManager {
public:
    DatabaseManager();
    ~DatabaseManager();
    bool connect();
    QSqlDatabase getDatabase();

private:
    QSqlDatabase db;
};

#endif // DATABASEMANAGER_H
