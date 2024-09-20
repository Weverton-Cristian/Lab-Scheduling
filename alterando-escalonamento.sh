#!/bin/bash

echo "Digite o PID do processo a ser alterado:"
read PID

echo "Digite o tipo de escalonamento (0: SCHED_OTHER, 1: SCHED_FIFO, 2: SCHED_RR, 3: SCHED_BATCH):"
read POLICY

# Convertendo a escolha do usuário para a política correspondente
case $POLICY in
    0)
        POLICY_NAME="SCHED_OTHER"
    ;;
    1)
        POLICY_NAME="SCHED_FIFO"
    ;;
    2)
        POLICY_NAME="SCHED_RR"
    ;;
    3)
        POLICY_NAME="SCHED_BATCH"
    ;;
    *)
        echo "Política inválida"
        exit 1
    ;;
esac
