import { Request, Response } from "express";
import { db } from "../../database";

export class ChangeStudantTurma {
  async handle(req: Request, res: Response) {
    const { id } = req.params;
    const { turma } = req.body;

    const changeTurma = await db.studant.update({
      where: {
        id: Number(id),
      },
      data: {
        turma: turma,
      },
    });
    return res.json(changeTurma);
  }
}
