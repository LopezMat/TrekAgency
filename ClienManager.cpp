#include "ClientManager.h"

ClientManager::ClientManager(DatabaseManager* dbManager) : dbManager(dbManager) {}

bool ClientManager::addClient(const QString& nom, const QString& prenom, const QString& email, const QString& telephone) {
    QSqlQuery query(dbManager->getDatabase());
    query.prepare("INSERT INTO Clients (nom, prenom, email, telephone, date_inscription) VALUES (?, ?, ?, ?, CURDATE())");
    query.addBindValue(nom);
    query.addBindValue(prenom);
    query.addBindValue(email);
    query.addBindValue(telephone);
    return query.exec();
}

QSqlQueryModel* ClientManager::getAllClients() {
    QSqlQueryModel* model = new QSqlQueryModel();
    model->setQuery("SELECT * FROM Clients", dbManager->getDatabase());
    return model;
}
