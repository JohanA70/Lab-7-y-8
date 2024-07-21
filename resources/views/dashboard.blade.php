<x-app-layout>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Bienvenido
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    <div style="width: 90%; margin-left: 5%; margin-bottom: 5%;">
                        <h1>Lista de tareas</h1>
                        <hr>
                        <a href="/tasks/create"><button type="submit" class="btn btn-primary">Crear Tarea</button></a>

                        <table class="table table-striped-columns">
                            <tr>
                                <th style="width: 22%;">Nombre</th>
                                <th style="width: 22%;">Prioridad</th>
                                <th style="width: 22%;">Usuario</th>
                                <th style="width: 22%;">Etiquetas</th>
                                <th style="width: 22%;">Completada</th>
                                <th style="width: 22%;">Acciones</th>
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

                                    <td>
                                        @if (!$task->completed)
                                        <form action="/tasks/{{ $task->id }}/complete" method="POST" style="display:inline;">
                                            @csrf
                                            @method('PATCH')
                                            <button type="submit" class="btn btn-success">Completar</button>
                                        </form>
                                        @else
                                        <span>-</span>
                                        @endif
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</x-app-layout>