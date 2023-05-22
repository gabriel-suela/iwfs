import { Request, Response } from "express";
import { db } from "../../database";

export class CreateRoomController {
  async handle(req: Request, res: Response) {
    const { name, module } = req.body;

    const newRoom = await db.turma.create({
      data: {
        name,
        module,
      },
    });
    return res.json(newRoom);
  }
}
