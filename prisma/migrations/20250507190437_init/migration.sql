/*
  Warnings:

  - You are about to drop the column `cuisines` on the `Restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `image` on the `Restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `metro` on the `Restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `price` on the `Restaurant` table. All the data in the column will be lost.
  - You are about to drop the column `seats` on the `Restaurant` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Restaurant" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "description" TEXT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL
);
INSERT INTO "new_Restaurant" ("address", "createdAt", "id", "name", "updatedAt") SELECT "address", "createdAt", "id", "name", "updatedAt" FROM "Restaurant";
DROP TABLE "Restaurant";
ALTER TABLE "new_Restaurant" RENAME TO "Restaurant";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
