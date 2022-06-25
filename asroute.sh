#!/bin/bash
whois -h whois.radb.net -i origin as$1 | grep route
