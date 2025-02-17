import { Request, Response } from "express";

import logger from "../lib/logger";
import { Incidents } from "../";
import { IncidentType } from "../types";
import incidents from "src/routes/incidents";

export const createIncident = async (req: Request, res: Response) => {
  try {
    const payload = req.body as IncidentType;

    const newIncident = payload;
    Incidents.push(newIncident);
    res.status(201).json({ message: "Incident added", incident: newIncident });
  } catch (error) {
    logger.error(error);
    res.status(500).json({ error: "An internal server error occured" });
  }
};


export const getIncidents = (req: Request, res: Response) => {
    return res.status(200).json({incidents: Incidents})
}