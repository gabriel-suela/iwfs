import { Request, Response } from "express";
import { db } from "../../database";

export class ChangeRoomModuleController {
  async handle(req: Request, res: Response) {
    const { id } = req.params;
    const { name, module } = req.body;

    const changeModule = await db.turma.update({
      where: {
        id: Number(id),
      },
      data: {
        name: name,
        module: module,
      },
    });
    return res.json(changeModule);
  }
}
