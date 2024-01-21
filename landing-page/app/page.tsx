import Link from "next/link"

import { env } from "@/env.mjs"
import { siteConfig } from "@/config/site"
import { cn } from "@/lib/utils"
import { buttonVariants } from "@/components/ui/button"

async function getGitHubStars(): Promise<string | null> {
  try {
    const response = await fetch(
      "https://api.github.com/repos/shadcn/taxonomy",
      {
        headers: {
          Accept: "application/vnd.github+json",
          Authorization: `Bearer ${env.GITHUB_ACCESS_TOKEN}`,
        },
        next: {
          revalidate: 60,
        },
      }
    )

    if (!response?.ok) {
      return null
    }

    const json = await response.json()

    return parseInt(json["stargazers_count"]).toLocaleString()
  } catch (error) {
    return null
  }
}

export default async function IndexPage() {
  const stars = await getGitHubStars()

  return (
    <>
      <section className="space-y-6 pb-8 pt-6 md:pb-12 md:pt-10 lg:py-32">
        <div
          className="container flex max-w-[64rem] flex-col items-center gap-4 text-center">

          <h1 className="font-heading text-3xl sm:text-5xl md:text-6xl lg:text-7xl">
            Rescue VR
          </h1>
          <p className="max-w-[42rem] leading-normal text-foreground sm:text-xl sm:leading-8">
            Empowering First Responders <br></br>
            Where Every Pixel saves a Life, and Every Second makes a Difference!
          </p>

          <div className="space-x-4 flex ">
            <form className="space-x-4 flex " action="http://127.0.0.1:5000/cnn">
              <label htmlFor="upload-video" className={cn(buttonVariants({ size: "lg" }))}
              >
                Select Video
              </label>
              <input id="upload-video" type="file" className="hidden" name="file"></input>
              <button className={cn(buttonVariants({ size: "lg" }))}
              >
                Upload
              </button>
            </form>
            <Link
              href={siteConfig.links.github}
              target="_blank"
              rel="noreferrer"
              className={cn(buttonVariants({ size: "lg" }))}
            >
              GitHub
            </Link>

          </div>
          {/* <Link
            href={siteConfig.links.twitter}
            className="rounded-2xl bg-muted px-4 py-1.5 text-sm font-medium"
            target="_blank"
          >
            Follow along on Twitter
          </Link> */}
        </div>
      </section>
      <section
        id="features"
        className="container space-y-6 bg-slate-50 py-8 dark:bg-transparent md:py-12 lg:py-24"
      >
        <div className="mx-auto flex max-w-[58rem] flex-col items-center space-y-4 text-center">
          <h2 className="font-heading text-3xl leading-[1.1] sm:text-3xl md:text-6xl">
            Features
          </h2>
          <p className="max-w-[85%] leading-normal text-foreground sm:text-lg sm:leading-7">
            Drone-Powered Disaster Response
          </p>
        </div>
        <div className="mx-auto grid justify-center gap-4 sm:grid-cols-2 md:max-w-[64rem] md:grid-cols-3">
          <div className="relative overflow-hidden rounded-lg border bg-background p-2">
            <div className="flex h-[180px] flex-col justify-between rounded-md p-6">
              <svg viewBox="0 0 24 24" className="h-12 w-12 fill-current">
                <path d="M20,7H18V5h2a1,1,0,0,0,0-2H14a1,1,0,0,0,0,2h2V7H8V5h2a1,1,0,0,0,0-2H4A1,1,0,0,0,4,5H6V7H4a3,3,0,0,0,0,6H6.1a4.955,4.955,0,0,0,.99,2.092A5,5,0,0,0,3,20a1,1,0,0,0,2,0,3,3,0,0,1,3-3h3v2a1,1,0,0,0,2,0V17h3a3,3,0,0,1,3,3,1,1,0,0,0,2,0,5,5,0,0,0-4.091-4.908A4.955,4.955,0,0,0,17.9,13H20a3,3,0,0,0,0-6Zm0,4H17a1,1,0,0,0-1,1,3,3,0,0,1-3,3H11a3,3,0,0,1-3-3,1,1,0,0,0-1-1H4A1,1,0,0,1,4,9H20a1,1,0,0,1,0,2Zm-6,1a2,2,0,0,1-4,0,1.929,1.929,0,0,1,.1-.581A1,1,0,1,0,11.417,10.1,1.978,1.978,0,0,1,12,10,2,2,0,0,1,14,12Z" />
              </svg>
              <div className="space-y-2">
                <h3 className="font-bold">Precision in Crisis Situations</h3>
                <p className="text-sm text-foreground">
                  Fast and Informed Decisions using the Unique Vantage Point.
                </p>
              </div>
            </div>
          </div>
          <div className="relative overflow-hidden rounded-lg border bg-background p-2">
            <div className="flex h-[180px] flex-col justify-between rounded-md p-6">
              <svg viewBox="0 0 24 24" className="h-12 w-12 fill-current">
                <path d="M0 12C0 5.373 5.373 0 12 0c4.873 0 9.067 2.904 10.947 7.077l-15.87 15.87a11.981 11.981 0 0 1-1.935-1.099L14.99 12H12l-8.485 8.485A11.962 11.962 0 0 1 0 12Zm12.004 12L24 12.004C23.998 18.628 18.628 23.998 12.004 24Z" />
              </svg>
              <div className="space-y-2">
                <h3 className="font-bold">Tagged Points of Interest</h3>
                <p className="text-sm text-foreground">
                  Help navigates Disaster Zones effortlessly.
                </p>
              </div>
            </div>
          </div>
          <div className="relative overflow-hidden rounded-lg border bg-background p-2">
            <div className="flex h-[180px] flex-col justify-between rounded-md p-6">
              <svg
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="1"
                className="h-12 w-12 fill-current"
              >
                <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
              </svg>
              <div className="space-y-2">
                <h3 className="font-bold">Situational Understanding</h3>
                <p className="text-sm text-foreground">
                  Crucial Situation Information enhances On-Ground Response.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <section id="open-source" className="container py-8 md:py-12 lg:py-24">
        <div className="mx-auto flex max-w-[58rem] flex-col items-center justify-center gap-4 text-center">
          <h2 className="font-heading text-3xl leading-[1.1] sm:text-3xl md:text-6xl">
            Proudly Open Source
          </h2>
          <p className="max-w-[85%] leading-normal text-foreground sm:text-lg sm:leading-7">
            RescueVR is open source and powered by open source software. <br />{" "}
            The code is available on{" "}
            <Link
              href={siteConfig.links.github}
              target="_blank"
              rel="noreferrer"
              className="underline underline-offset-4"
            >
              GitHub
            </Link>
            .{" "}
          </p>
          {stars && (
            <Link
              href={siteConfig.links.github}
              target="_blank"
              rel="noreferrer"
              className="flex"
            >
              <div className="flex h-10 w-10 items-center justify-center space-x-2 rounded-md border border-muted bg-muted">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  fill="currentColor"
                  viewBox="0 0 24 24"
                  className="h-5 w-5 text-foreground"
                >
                  <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"></path>
                </svg>
              </div>
              <div className="flex items-center">
                <div className="h-4 w-4 border-y-8 border-l-0 border-r-8 border-solid border-muted border-y-transparent"></div>
                <div className="flex h-10 items-center rounded-md border border-muted bg-muted px-4 font-medium">
                  {stars} stars on GitHub
                </div>
              </div>
            </Link>
          )}
        </div>
      </section>
    </>
  )
}