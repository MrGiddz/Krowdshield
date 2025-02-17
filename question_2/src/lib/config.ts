import dotenv from "dotenv";

dotenv.config();

// Load environment variables

export const PORT = Number(process.env.PORT);

// function to check required environment variables
const checkRequiredEnvVars = (vars: string[]) => {
  vars.forEach((variable) => {
    if (!process.env[variable]) {
      throw new Error(`Environment variable ${variable} is not set!`);
    }
  });
};

checkRequiredEnvVars(["PORT"]);
