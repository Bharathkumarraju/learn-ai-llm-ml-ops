import asyncio

async def say_hello():
    await asyncio.sleep(1)
    print("Hello, world!")

async def main():
    await say_hello()

asyncio.run(main())
