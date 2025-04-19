<?php

function filterByStatus(array $tasks, string $status): array {
    $filtered = [];

    foreach ($tasks as $task) {
        if ($task['status'] === $status) {
            $filtered[] = $task;
        }
    }

    return $filtered;
}