import { Router } from "express";

import Validate from "../lib/validator";
import { incidentSchema } from "../types";
import {
  createIncident,
  getIncidents,
} from "../controller/incidents.controler";

export default (router: Router) => {
  const auth = Router();

  auth.post("/", Validate(incidentSchema), createIncident);
  auth.get("/", getIncidents);

  router.use("/incidents", auth);
};
