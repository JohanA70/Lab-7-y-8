<x-app-layout>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    {{ __("You're logged in!") }}
                </div>
            </div>
        </div>
    </div>

    <div style="width: 90%; margin-left: 5%; margin-bottom: 5%;">
        <h1>Editando tarea ID: {{ $task->id }}</h1>
        <hr>
        <a href="{{ route('tasks.index') }}"><button type="submit" class="btn btn-primary">Volver</button></a>
        @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif
        <form action="/tasks/{{ $task->id }}" method="POST">
            @csrf
            @method('PUT')
            <div>
                <label class="form-label" for="name">Nombre</label>
                <input class="form-control" type="text" name="name" id="name" value="{{ $task->name }}">
                @error('name')
                <p>{{ $message }}</p>
                @enderror
            </div>
            <div>
                <label class="form-label" for="priority_id">Prioridad</label>
                <select name="priority_id" id="priority_id" class="form-control">
                    @foreach($priorities as $priority)
                    <option value="{{ $priority->id }}">{{ $priority->name }}</option>
                    @endforeach
                </select>
                @error('priority_id')
                <p>{{ $message }}</p>
                @enderror
            </div>
            <div>
                <label class="form-label" for="description">Descripción</label>
                <textarea class="form-control" name="description" id="description" cols="30" rows="10">{{ $task->description }}</textarea>
                @error('description')
                <p>{{ $message }}</p>
                @enderror
            </div>
            <div>
                <label class="form-label" for="tags">Etiquetas</label>
                <select name="tags[]" id="tags" class="form-control" multiple>
                    @foreach($tags as $tag)
                    <option value="{{ $tag->id }}" {{ $task->tags->contains($tag->id) ? 'selected' : '' }}>{{ $tag->name }}</option>
                    @endforeach
                </select>
                @error('tags')
                <p>{{ $message }}</p>
                @enderror
            </div>
            <button type="submit" class="btn btn-primary">Actualizar</button>
        </form>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</x-app-layout>