#ifndef CLIENTMANAGER_H
#define CLIENTMANAGER_H

#include "DatabaseManager.h"
#include <QString>
#include <QSqlQueryModel>

class ClientManager {
public:
    explicit ClientManager(DatabaseManager* dbManager);
    bool addClient(const QString& nom, const QString& prenom, const QString& email, const QString& telephone);
    QSqlQueryModel* getAllClients();

private:
    DatabaseManager* dbManager;
};

#endif // CLIENTMANAGER_H
