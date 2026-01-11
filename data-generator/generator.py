import pandas as pd
import random
from faker import Faker
from datetime import datetime, timedelta
import numpy as np
from pathlib import Path

fake = Faker()
random.seed(42)

# -----------------------------
# CONFIG
# -----------------------------
GARAGE_COUNT = 100
USER_COUNT = 300
VEHICLE_COUNT = 650
SERVICE_HISTORY_COUNT = 1500

OUTPUT_DIR = "./data/"

# Ensure the output directory exists so CSV writes do not fail
Path(OUTPUT_DIR).mkdir(parents=True, exist_ok=True)

# -----------------------------
# GARAGES
# -----------------------------
cities = ["Dubai", "Sharjah", "Abu Dhabi", "Ajman"]
garage_types = ["authorized", "independent", "specialist"]

garages = []
for i in range(1, GARAGE_COUNT + 1):
    garages.append({
        "garage_id": f"GAR-{i:03}",
        "garage_name": f"{fake.company()} Auto",
        "city": random.choice(cities),
        "garage_type": random.choice(garage_types),
        "ev_supported": random.random() < 0.35,
        "rating": round(random.uniform(3.2, 4.9), 1)
    })

df_garages = pd.DataFrame(garages)
df_garages.to_csv(OUTPUT_DIR + "garages.csv", index=False)

# -----------------------------
# GARAGE SERVICES
# -----------------------------
services_catalog = [
    ("Oil Change", "maintenance"),
    ("Brake Pad Replacement", "repair"),
    ("Battery Replacement", "repair"),
    ("Engine Diagnostics", "diagnostics"),
    ("Transmission Repair", "repair"),
    ("Wheel Alignment", "maintenance"),
    ("EV Battery Check", "ev"),
]

services = []
svc_id = 1
for g in garages:
    for _ in range(random.randint(5, 7)):
        svc = random.choice(services_catalog)
        services.append({
            "service_id": f"SVC-{svc_id:04}",
            "garage_id": g["garage_id"],
            "service_name": svc[0],
            "category": svc[1],
            "avg_cost_aed": random.randint(200, 3000),
            "skill_level": random.choice(["basic", "intermediate", "advanced"])
        })
        svc_id += 1

df_services = pd.DataFrame(services)
df_services.to_csv(OUTPUT_DIR + "garage_services.csv", index=False)

# -----------------------------
# USERS
# -----------------------------
users = []
for i in range(1, USER_COUNT + 1):
    users.append({
        "user_id": f"USR-{i:03}",
        "name": fake.name(),
        "family_type": random.choice(["single", "family"]),
        "experience_level": random.choice(["novice", "average", "enthusiast"])
    })

df_users = pd.DataFrame(users)
df_users.to_csv(OUTPUT_DIR + "users.csv", index=False)

# -----------------------------
# VEHICLES
# -----------------------------
makes_models = {
    "Toyota": ["Corolla", "Camry", "RAV4"],
    "Honda": ["Civic", "CR-V"],
    "Nissan": ["Altima", "X-Trail"],
    "Tesla": ["Model 3", "Model Y"],
    "BMW": ["X3", "3 Series"]
}

vehicles = []
for i in range(1, VEHICLE_COUNT + 1):
    make = random.choice(list(makes_models.keys()))
    model = random.choice(makes_models[make])
    year = random.randint(2015, 2024)
    vehicles.append({
        "vehicle_id": f"VEH-{i:04}",
        "user_id": random.choice(users)["user_id"],
        "make": make,
        "model": model,
        "year": year,
        "fuel_type": "electric" if make == "Tesla" else random.choice(["petrol", "diesel", "hybrid"]),
        "mileage_km": random.randint(10000, 200000)
    })

df_vehicles = pd.DataFrame(vehicles)
df_vehicles.to_csv(OUTPUT_DIR + "vehicles.csv", index=False)

# -----------------------------
# SERVICE HISTORY
# -----------------------------
history = []
for i in range(1, SERVICE_HISTORY_COUNT + 1):
    v = random.choice(vehicles)
    svc = random.choice(services)
    history.append({
        "record_id": f"HIS-{i:05}",
        "vehicle_id": v["vehicle_id"],
        "garage_id": svc["garage_id"],
        "service_id": svc["service_id"],
        "service_date": fake.date_between(start_date="-2y", end_date="today"),
        "mileage_km": v["mileage_km"] + random.randint(-5000, 5000),
        "cost_aed": random.randint(200, 5000),
        "outcome": random.choice(["resolved", "partially_resolved", "recurring"])
    })

df_history = pd.DataFrame(history)
df_history.to_csv(OUTPUT_DIR + "vehicle_service_history.csv", index=False)

# -----------------------------
# VEHICLE ISSUES
# -----------------------------
issues = []
systems = ["engine", "brakes", "battery", "transmission", "suspension"]
for i in range(1, 151):
    issues.append({
        "issue_id": f"ISS-{i:03}",
        "symptom": fake.sentence(nb_words=4),
        "affected_system": random.choice(systems),
        "severity": random.choice(["low", "medium", "high", "critical"]),
        "drive_safe": random.choice([True, False])
    })

pd.DataFrame(issues).to_csv(OUTPUT_DIR + "vehicle_issues.csv", index=False)

# -----------------------------
# DIAGNOSTIC RULES
# -----------------------------
rules = []
for i in range(1, 121):
    rules.append({
        "rule_id": f"DR-{i:03}",
        "conditions": fake.sentence(nb_words=6),
        "logic_type": random.choice(["deterministic", "probabilistic"]),
        "confidence": round(random.uniform(0.6, 0.95), 2),
        "conclusion": fake.sentence(nb_words=5)
    })

pd.DataFrame(rules).to_csv(OUTPUT_DIR + "diagnostic_rules.csv", index=False)

# -----------------------------
# IMAGE DIAGNOSTICS
# -----------------------------
images = []
visuals = ["oil leak", "cracked tire", "rusted brake disc", "smoke from exhaust"]
for i in range(1, 121):
    images.append({
        "image_case_id": f"IMG-{i:03}",
        "visual_feature": random.choice(visuals),
        "confidence": round(random.uniform(0.7, 0.98), 2),
        "likely_issue": fake.word(),
        "urgency": random.choice(["low", "medium", "high", "critical"])
    })

pd.DataFrame(images).to_csv(OUTPUT_DIR + "image_diagnostics.csv", index=False)

print("✅ Vehicle datasets generated successfully")
