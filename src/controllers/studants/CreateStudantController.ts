import { Request, Response } from "express";
import { studant } from "@prisma/client";
import { db } from "../../database";

export class CreateStudantController {
  async handle(req: Request, res: Response) {
    const { name, email, birth_date } = req.body;

    const newStudant = await db.studant.create({
      data: {
        name,
        email,
      } as studant,
    });
    return res.json(newStudant);
  }
}
