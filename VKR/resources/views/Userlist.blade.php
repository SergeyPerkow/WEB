<x-app-layout>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Рабочая страница') }}
        </h2>
    </x-slot>
    
   
    <div class="py-12">
        
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            
<div class="row">
<div class="col-sm-8">
   
<div class="card-header mt-3 ml-2 mb-3">Пользователи</div>
            
         @foreach($data as $el)
            <div class="alert ml-3 alert-dark" role="alert">
            <h3>{{ $el->FIO }}</h3>
            <p>{{ $el->role }}</p>
            <p>{{ $el->name_f }}</p>
            <p>{{ $el->name_d }}</p>
            
            <form action="{{ route('ShowQuest', $el->id) }}" method="get" enctype="multipart/form-data">        
            <button class="btn btn-warning" style='float: left'>
            <input type="int" hidden value='0' class="form-control" id="quest_status" name="quest_status" required="">
            Невыполненные задания
            </button>
            </form>
            
            
            <form action="{{ route('ShowQuest', $el->id) }}" method="get" enctype="multipart/form-data">                       
            <button class="btn btn-warning ml-2" >
            <input type="int" hidden value='1' class="form-control" id="quest_status" name="quest_status" required=""> 
            Выполненные задания
            </button>
            </form>
            
            </div>
        @endforeach

          
                                                    
                 

</div>

@include('inc.aside')

@section('aside')
@endsection('aside')
</div>
            
            
            

           

            <div>
            <div class="max-w-7xl mx-auto py-10 sm:px-6 lg:px-8">

            
                    
                </div>
        
              </div>

            </div>
        </div>
        
    </div>
    
</x-app-layout>