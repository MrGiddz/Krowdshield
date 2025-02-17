import { Router } from "express";
import incidents from "./incidents";

const router = Router();

export default (): Router => {
  incidents(router);
  return router;
};
