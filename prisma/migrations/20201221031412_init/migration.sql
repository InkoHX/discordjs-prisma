-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "GuildMember" (
    "id" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Guild" (
    "id" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User.id_unique" ON "User"("id");

-- CreateIndex
CREATE UNIQUE INDEX "GuildMember.id_unique" ON "GuildMember"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Guild.id_unique" ON "Guild"("id");
