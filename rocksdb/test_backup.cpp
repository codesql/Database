#include "rocksdb/db.h"
#include <cstdio>
#include "rocksdb/utilities/backupable_db.h"
#include <vector>
using namespace rocksdb;
int main() {
   Options options;
   options.create_if_missing = true;
   DB* db;
   Status s = DB::Open(options, "/kay/dbtest4", &db);
   assert(s.ok());
   BackupEngine* backup_engine;
   s = BackupEngine::Open(Env::Default(), BackupableDBOptions("/kay/backuptest_dbtest4"), &backup_engine);
   assert(s.ok());
   s = backup_engine->CreateNewBackup(db);
   assert(s.ok());
   s = backup_engine->CreateNewBackup(db);
   assert(s.ok());
   std::vector<BackupInfo> backup_info;
   backup_engine->GetBackupInfo(&backup_info);
   // you can get IDs from backup_info if there are more than two
//   s = backup_engine->VerifyBackup(1 /* ID */);
//   assert(s.ok());
//   s = backup_engine->VerifyBackup(2 /* ID */);
//   assert(s.ok());
//   delete db;
//   delete backup_engine;
}
