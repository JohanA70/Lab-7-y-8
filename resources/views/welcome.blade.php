<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- Styles -->
    <style>

    </style>
</head>

<body>
    <div style="width: 80%; margin-left: 5%; margin-top: 1%;">
        <header class="grid grid-cols-2 items-center gap-2 py-10 lg:grid-cols-3" style="margin-bottom: 3%;">
            @if (Route::has('login'))
            <nav class="-mx-3 flex flex-1 justify-end">
                @auth
                <button style="border: solid 2px black;">
                    <a href="{{ url('/dashboard') }}">
                        Dashboard
                    </a>
                </button>
                @else
                <button style="border: solid 2px black;">
                    <a href="{{ route('login') }}">
                        Log in
                    </a>
                </button>

                @if (Route::has('register'))
                <button style="border: solid 2px black;">
                    <a href="{{ route('register') }}">
                        Register
                    </a>
                </button>
                @endif
                @endauth
            </nav>
            @endif
        </header>

        <table class="table table-striped-columns">
            <tr>
                <th style="width: 22%;">Nombre</th>
                <th style="width: 22%;">Prioridad</th>
                <th style="width: 22%;">Usuario</th>
                <th style="width: 22%;">Etiquetas</th>
                <th style="width: 22%;">Completada</th>
            </tr>
            </thead>
            <tbody>
                @foreach ($tasks as $task)
                <tr class="tr">
                    <td><a href="/tasks/{{ $task->id }}">{{ $task->name }}</a></td>
                    <td>
                        <span class="badge text-bg-warning">{{ $task->priority?->name }}</span>
                    </td>
                    <td>
                        @if ($task->user)
                        {{ $task->user->name }}
                        @else
                        <span class="text-muted">No asignado</span>
                        @endif
                    </td>
                    <td>
                        @foreach ($task->tags as $tag)
                        <span class="badge bg-primary">{{ $tag->name }}</span>
                        @endforeach
                    </td>
                    <td>
                        @if (!$task->completed)
                        Pendiente
                        @else
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="green" class="bi bi-check2-circle" viewBox="0 0 16 16">
                            <path d="M2.5 8a5.5 5.5 0 0 1 8.25-4.764.5.5 0 0 0 .5-.866A6.5 6.5 0 1 0 14.5 8a.5.5 0 0 0-1 0 5.5 5.5 0 1 1-11 0" />
                            <path d="M15.354 3.354a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0z" />
                        </svg>
                        Completada
                        @endif
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>

</html>