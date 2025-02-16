import React from "react";
import styled from "styled-components";

const CardContainer = styled.div`
  width: 300px;
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  overflow: hidden;
`;

const CardImage = styled.img`
  width: 100%;
  height: 180px;
  object-fit: cover;
`;

const CardContent = styled.div`
  padding: 16px;
`;

const CardTitle = styled.h3`
  margin: 0;
  font-size: 1.2rem;
  color: #333;
`;

const CardDescription = styled.p`
  margin-top: 8px;
  font-size: 0.9rem;
  color: #666;
`;

const CardText = styled.p`
  margin-top: 8px;
  font-size: 0.9rem;
  color: #666;
`;


interface Card {
    title: string;
    image: string;
    description: string;
    location: string;
    timestamp: Date
}

const IncidentCard = ({ image, title, description, location, timestamp }: Card) => {

  const formatTime = (timestamp: Date) => new Date(timestamp).toLocaleString("en-US", {
    month: "2-digit",
    day: "2-digit",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
    hour12: true,
  });
  return (
    <CardContainer>
      <CardImage src={image} alt={title} />
      <CardContent>
        <CardTitle>{title}</CardTitle>
        <CardDescription>{description}</CardDescription>
        <CardText>Location: {location}</CardText>
        <CardText>Timestamp: {formatTime(timestamp)}</CardText>
      </CardContent>
    </CardContainer>
  );
};

export default IncidentCard;
