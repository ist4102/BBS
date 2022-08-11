{!! '<'.'?xml version="1.0" encoding="utf-8"?'.'>' !!}

<rss version="2.0" xmlns:content="http://purl.org/rss/1.0/modules/content/" xmlns:atom="http://www.w3.org/2005/Atom">

    <channel>
        <title><![CDATA[{!! $title !!}]]></title>
        @if (!empty($description))<description><![CDATA[{!! $description !!}]]></description>@endif
        <link><![CDATA[{!! $link !!}]]></link>
        <pubDate>{{ $pubDate->format(DateTime::RSS) }}</pubDate>
        <atom:link href="{{ $self_link }}" rel="self" type="application/rss+xml" />

        @foreach ($entries as $entry)
        <item>
            <title><![CDATA[{!! $entry['title'] !!}]]></title>
            <link>{{ $entry['permalink'] }}</link>
            <description><![CDATA[{!! $entry['content'] !!}]]></description>
            <guid>{{ $entry['permalink'] }}</guid>
            <pubDate>{{ $entry['pubdate']->format(DateTime::RSS) }}</pubDate>
        </item>
        @endforeach

    </channel>

</rss>
