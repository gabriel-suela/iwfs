import { Request, Response } from "express";
import { db } from "../../database";

export class FindStudantsController {
  async handle(req: Request, res: Response) {
    const { id } = req.params;

    const findStudants = await db.studant.findUnique({
      where: {
        id: Number(id),
      },
    });
    return res.json(findStudants);
  }
}
