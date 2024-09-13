#!/bin/bash

## Visitor:
eapol_test -s $RAD_SECRET -c eapol-eduroam-visitor.conf

## Local:
eapol_test -s $RAD_SECRET -c eapol-eduroam-local.conf

