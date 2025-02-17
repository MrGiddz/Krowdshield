import { z } from "zod";

export const incidentSchema = z.object({
  title: z.string().min(5, "title must be at least 5 characters long"),
  location: z.string().min(5, "title must be at least 5 characters long"),
  description: z.string(),
  reported_by: z.string(),
});

export type IncidentType = z.infer<typeof incidentSchema>;
