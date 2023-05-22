import { Request, Response } from "express";
import { db } from "../../database";
import { teacher } from "@prisma/client";

export class CreateTeacherController {
  async handle(req: Request, res: Response) {
    const { name, email } = req.body;

    const newTeacher = await db.teacher.create({
      data: {
        name,
        email,
      } as teacher,
    });
    return res.json(newTeacher);
  }
}
