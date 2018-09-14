#!/bin/bash

for i in Student{1..100}; do cf create-user $i Passw0rd; cf create-org $i; cf set-org-role $i $i OrgManager --stdin; done
for i in Student{1..100}; do cf set-org-role $i $i OrgManager;  done