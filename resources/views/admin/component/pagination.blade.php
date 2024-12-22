<div class="sherah-pagination">
    <ul class="sherah-pagination__list">

        @if ($paginator->onFirstPage())
        @else
            <li class="sherah-pagination__button"><a href="{{ $paginator->previousPageUrl() }}">Prev</a></li>
        @endif


        @foreach ($elements as $element)
        @if (is_array($element))
            @if (count($element) < 2)
            @else
                @foreach ($element as $key => $el)
                    @if ($key == $paginator->currentPage())
                        <li class="active"><a href="javascript::void()">{{ $key }}</a></li>
                    @else
                        <li><a href="{{ $el }}">{{ $key }}</a></li>
                    @endif
                @endforeach
            @endif
        @else
        <li><a href="javascript::void()">...</a></li>
        @endif

    @endforeach

        @if ($paginator->hasMorePages())
            <li class="sherah-pagination__button"><a href="{{ $paginator->nextPageUrl() }}">Next</a></li>
        @endif


    </ul>
</div>
