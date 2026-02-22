
# === CONFIG ===
# All configurable defaults in one place
default_chunk_size := "1000"
output_dir := "./output"
default_first := "0"
default_last := "5001"
default_file := "./data/email/inbox/Form_12_mbox.mbox"

# === DEFAULT ===
default: list

# === COMMANDS ===

# List all available commands
list:
    @just --list

# Setup the project
setup:
    ./setup

# Execute one cycle through the loop
# init > ingest > transform > egest > cleanup
dev:
    ./dev

# Put the system into adaptive operation
run:
    ./run

# Add a new project with interactive prompts
add-project:
    #!/usr/bin/env bash
    @read -p "Enter project name: " name
    @read -p "Enter initial task: " task
    @task add project:"$name" "$task"
    @echo "Project $name created with task: $task"

# List all projects
projects:
  @task projects

# List tasks
task-list:
  @tas list

# Hello

