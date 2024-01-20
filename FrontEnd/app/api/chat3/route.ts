// Import necessary modules from the OpenAI library
import { OpenAIStream, StreamingTextResponse } from "ai";
import { Configuration, OpenAIApi } from "openai-edge";

// Import NextRequest from next/server for handling HTTP requests in Next.js
import { NextRequest } from "next/server";

// Set up the OpenAI configuration with API key
const openAIConfiguration = new Configuration({
  apiKey: process.env.OPENAI_API_KEY, 
});

// Create an instance of the OpenAIApi with the configuration
const openai = new OpenAIApi(openAIConfiguration);

export const runtime = "edge";

const systemPrompt = "Hi, I'm rescueVR. How can I Help you?";

// handle incoming requests
export async function POST(req: NextRequest) {
  // Extract messages from the request body
  const { messages } = await req.json();

  // Create a chat completion request to OpenAI's API
  const response = await openai.createChatCompletion({
    model: "gpt-3.5-turbo",    
    stream: true,               
    temperature: 0.7,           
    max_tokens: 512,           
    messages: [{ role: "system", content: systemPrompt }, ...messages], 
  });

  // Create a stream from the response to handle "continuous" data flow
  const stream = OpenAIStream(response);

  // Return a streaming text response
  return new StreamingTextResponse(stream);
}
