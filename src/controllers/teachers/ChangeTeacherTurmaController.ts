import { Request, Response } from "express";
import { db } from "../../database";

export class ChangeTeacherTurmaController {
  async handle(req: Request, res: Response) {
    const { id } = req.params;
    const { turma } = req.body;

    const changeTeacherTurma = await db.teacher.update({
      where: {
        id: Number(id),
      },
      data: {
        turma: turma,
      },
    });
    return res.json(changeTeacherTurma);
  }
}
