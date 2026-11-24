import os

version = os.getenv("APP_VERSION", "development")

print("=" * 40)
print("CONTAINERS IN CI - LIVE DEMO")
print("=" * 40)
print(f"Application version: {version}")
print("Status: Container running successfully!")
print("=" * 40)

raise RuntimeError("Application failed!")
