import { PrismaClient } from "@prisma/client";

const db = new PrismaClient({
  log: ["info", "query", "warn"],
});

export { db };
