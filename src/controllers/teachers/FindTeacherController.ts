import { Request, Response } from "express";
import { db } from "../../database";

export class FindTeacherController {
  async handle(req: Request, res: Response) {
    const { id } = req.params;

    const findTeacher = await db.turma.findUnique({
      where: {
        id: Number(id),
      },
    });
    return res.json(findTeacher);
  }
}
