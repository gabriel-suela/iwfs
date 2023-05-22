import { Router } from "express";
import { ChangeStudantTurma } from "../controllers/studants/ChangeStudantTurma";
import { CreateStudantController } from "../controllers/studants/CreateStudantController";
import { CreateTeacherController } from "../controllers/teachers/CreateTeacherController";
import { FindTeacherController } from "../controllers/teachers/FindTeacherController";
import { ChangeTeacherTurmaController } from "../controllers/teachers/ChangeTeacherTurmaController";
import { FindStudantsController } from "../controllers/studants/FindStudantsController";
import { CreateRoomController } from "../controllers/room/CreateRoomController";
import { ChangeRoomModuleController } from "../controllers/room/ChangeRoomModuleController";
import { FindRoomController } from "../controllers/room/FindRoomController";

const router = Router();

// Studant Controllers
const createNewStudant = new CreateStudantController();
const getStudants = new FindStudantsController();
const changeStudantTurma = new ChangeStudantTurma();

// Turma Controllers
const createNewRoom = new CreateRoomController();
const getRoom = new FindRoomController();
const changeRoomModule = new ChangeRoomModuleController();

// Teacher Controllers
const createNewTeacher = new CreateTeacherController();
const getTeacher = new FindTeacherController();
const changeTeacherTurma = new ChangeTeacherTurmaController();

// studants routes
router.post("/studant", createNewStudant.handle);
router.get("/studant/:id", getStudants.handle);
router.put("/studants/turma", changeStudantTurma.handle);

// turma routes
router.post("/turma", createNewRoom.handle);
router.get("/turma/:id", getRoom.handle);
router.put("/turma/:id/module", changeRoomModule.handle);

// teacher routes
router.post("/teacher", createNewTeacher.handle);
router.get("/teacher/:id", getTeacher.handle);
router.put("/teacher/turma", changeTeacherTurma.handle);
export { router };
