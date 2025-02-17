

import express, { NextFunction, Request, Response } from "express";
import http from "http";
import bodyParser from "body-parser";
import cors from "cors";
import router from "./routes";
import { PORT } from "./lib/config";
import logger from "./lib/logger";"path";
import { IncidentType } from "./types";

const app = express();

app.use((req, res, next) => {
  const { method, url } = req;
  const timestamp = new Date().toISOString();

  logger.info(`[${timestamp}] ${method} ${url} - Request received`);

  res.on("finish", () => {
    const responseTime = new Date().toISOString();
    const { statusCode } = res;
    logger.info(
      `[${responseTime}] ${method} ${url} - Response sent with status ${statusCode}`
    );
  });

  next();
});

export const Incidents: IncidentType[] = [];

app.use(
  cors({
    credentials: true,
  })
);

app.use(bodyParser.json());

app.get("/", (req: Request, res: Response, next: NextFunction) => {
  res.status(200).json({ message: "OK" });
});

// API route handler
app.use("/api", router());

app.use((req: Request, res: Response, next: NextFunction) => {
  res.status(404).json({
    status: "error",
    message: "Resource not found",
  });
});

// General Error Handler
app.use((err: any, req: Request, res: Response, next: NextFunction) => {
  logger.error(`Error: ${err.message}`);

  res.status(err.status || 500).json({
    status: "error",
    message: err.message || "Internal Server Error",
  });
});

const server = http.createServer(app);

server.listen(PORT, async () => {
  logger.info(`App is running at http://localhost:${PORT}`);
});

export default app;
