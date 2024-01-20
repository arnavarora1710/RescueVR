import { NextRequest, NextResponse } from "next/server";

import { Configuration, OpenAIApi } from "openai";

const openAIConfiguration = new Configuration({
  apiKey: process.env.OPENAI_API_KEY,
});

const openai = new OpenAIApi(openAIConfiguration);

const systemPrompt =
  "Hi, I'm rescueVR. How can I Help you?";

export async function POST(req: NextRequest) {
  const { messages } = await req.json();

  const completion = await openai.createChatCompletion({
    model: "gpt-3.5-turbo",
    temperature: 0.7,
    max_tokens: 512,
    messages: [{ role: "system", content: systemPrompt }, ...messages],
  });

  return NextResponse.json({
    success: true,
    content: completion?.data?.choices[0]?.message?.content,
  });
}
