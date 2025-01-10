#include <QApplication>
#include <QTableView>
#include "DatabaseManager.h"
#include "ClientManager.h"

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    DatabaseManager dbManager;
    if (!dbManager.connect()) {
        return -1;
    }

    ClientManager clientManager(&dbManager);
    clientManager.addClient("Dupont", "Jean", "jean.dupont@example.com", "0123456789");

    QTableView tableView;
    tableView.setModel(clientManager.getAllClients());
    tableView.show();

    return app.exec();
}
