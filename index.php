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


function groupByStatus(array $tasks): array {
    $grouped = [];

    foreach ($tasks as $task) {
        $status = $task['status'];
        if (!isset($grouped[$status])) {
            $grouped[$status] = [];
        }
        $grouped[$status][] = $task;
    }

    return $grouped;
}



$tasks = [
    ["id" => 1, "title" => "go to gym", "status" => "pending", "due" => "04/19/2025"],
    ["id" => 2, "title" => "go shopping", "status" => "done", "due" => "03/19/2025"],
    ["id" => 3, "title" => "Football match", "status" => "pending", "due" => "06/19/2025"],
    ["id" => 4, "title" => "watch a movie", "status" => "done", "due" => "03/19/2025"]
];


$result = filterByStatus($tasks, "done");
print_r($result);


$result = groupByStatus($tasks);
print_r($result);

?>

