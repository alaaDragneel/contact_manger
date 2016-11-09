
     @include('layouts.includes.header')
     @include('layouts.includes.navbar')
    <!-- content -->
    <div class="container">
      <div class="row">
        <div class="col-md-3">
          <div class="list-group">
            <?php
               $group_idCheck = Request::get('group_id');
               $listGroups = listGroups(Auth::user()->id);
              ?>
            <a href="{{ route('contacts.index') }}" class="list-group-item {{ empty($group_idCheck) ? 'active' : '' }}">All Contact <span class="badge">{{ collect($listGroups)->sum('total') }}</span></a>
            @foreach ($listGroups as $group)
              <a href="{{ route('contacts.index', ['group_id' => $group->id]) }}" class="list-group-item {{ $group_idCheck == $group->id ? 'active' : ''}}">{{ $group->name }} <span class="badge">{{ $group->total }}</span></a>
            @endforeach
          </div>
        </div><!-- /.col-md-3 -->

        <div class="col-md-9">
          @yield('content')
        </div><!-- /.col-md-9 -->
      </div>
    </div>
    @include('layouts.includes.footer')
