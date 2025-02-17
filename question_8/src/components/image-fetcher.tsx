import React, { useEffect, useState } from "react";

const ImageFetcher: React.FC = () => {
  const [imageUrl, setImageUrl] = useState<string>("");
  const controller = new AbortController();
  const signal = controller.signal;

  const cancelRequest = () => {
    controller.abort();
  };

  useEffect(() => {
    async function getImage() {
      try {
        const response = await fetch("https://placehold.co/600x400", {
          signal,
        });
        if (!response.ok) throw new Error("Failed to fetch image");

        const blob = await response.blob();
        const imageObjectUrl = URL.createObjectURL(blob);
        setImageUrl(imageObjectUrl);

        return () => URL.revokeObjectURL(imageObjectUrl);
      } catch (error) {
        console.error("Error fetching image:", error);
      }
    }

    getImage();

    return () => {
      cancelRequest();
    };
  }, []);

  return (
    <div>
      <h2>ImageFetcher</h2>
      {imageUrl ? (
        <img src={imageUrl} alt="Fetched Placeholder" />
      ) : (
        <p>Loading...</p>
      )}
    </div>
  );
};

export default ImageFetcher;
