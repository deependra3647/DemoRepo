#!/bin/bash

source_dir="/home/ubuntu/devops-zero-to-hero/scripts"
destination_dir="/home/ubuntu/devops-zero-to-hero/backups"

function create_backup() {

    backup_dir="${destination_dir}/backup_$(date +%Y-%m-%d_%H-%M-%S)"

    mkdir -p "$backup_dir"

    zip -r "${backup_dir}/backup.zip" "$source_dir"
}

create_backup

echo "Backup completed"
