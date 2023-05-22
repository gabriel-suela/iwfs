import { Request, Response } from "express";
import { db } from "../../database";

export class FindRoomController {
  async handle(req: Request, res: Response) {
    const { id } = req.params;

    const findRoom = await db.turma.findUnique({
      where: {
        id: Number(id),
      },
    });
    return res.json(findRoom);
  }
}
