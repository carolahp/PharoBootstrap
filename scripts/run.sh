#!/bin/bash 

set -ex

./pharo Pharo.image eval "
PBBootstrapSpur${3}50 new
	configurationVersion: '${1}' group: '${2}';
	espellBackend: EPSimulatorBackend for${3}Bit forBootstrap;
	bootstrap"